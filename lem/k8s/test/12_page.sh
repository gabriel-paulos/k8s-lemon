#!/bin/bash


#Change this value if you want to change ram size of lemon server
VAL=6

echo "The RAM size is $VAL for the lemon server"

sed -i "s/new_value/$VAL/g" remon.yaml


#CHANGE this value if you want to change the ram size of the page servers
PAGEA=1
#PAGEA=4

#Can ignore for now
PAGEB=6
#PAGEB=4

echo "The RAM size is $PAGEA for the page server 1, $PAGEB for page server 2; all on three different nodes"

sed -i "s/new_value/$PAGEA/g" page_p12.yaml

#sed -i "s/new_value/$PAGEB/g" page_p2.yaml

#cat page_p1.yaml

echo "Start up the page servers"

kubectl apply -f page_p12.yaml

#kubectl apply -f page_p2.yaml

sleep 3

non_running_pods=$(kubectl get pods --field-selector=status.phase!=Running -o jsonpath='{.items[*].metadata.name}')

if [ -n "$non_running_pods" ]; then
  echo "The following pods are crashed:"
  echo "$non_running_pods"
  kubectl delete -f page_p12.yaml
#  kubectl delete -f page_p2.yaml
  exit 1
else
  echo "All pods are in a 'Running' state."
fi

#kubectl get po -o wide | awk 'NR>1{print $6}' | tail -n +2 > /mnt/addrs.txt

kubectl get po -o wide | awk 'NR>1{print $6}' | tr '\n' ' ' > /mnt/addrs.txt

echo 'Check the addresses of the page servers'

cat /mnt/addrs.txt

sleep 1

kubectl apply -f remon.yaml

# Define the name of the pod
POD_NAME="duck"

sleep 20

# Check if the pod is running
if kubectl get pods "$POD_NAME" &> /dev/null; then
    STATUS=$(kubectl get pods "$POD_NAME" -o jsonpath='{.status.phase}')

    while [ "$STATUS" = "Running" ]; do
        echo "Pod is running"
        # Perform actions when the pod is running
        sleep 5
    done
fi

echo "Deleting pods"

kubectl delete -f remon.yaml

kubectl delete -f page_p12.yaml

#kubectl delete -f page_p2.yaml

echo "Done"



