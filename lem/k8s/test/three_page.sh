#!/bin/bash

VAL=6

echo "The RAM size is $VAL for the lemon server"

sed -i "s/new_value/$VAL/g" remon.yaml

PAGEA=6
#PAGEA=4

PAGEB=6
#PAGEB=4

PABEC=6
#PAGEC=4

echo "The RAM size is $PAGEA for the page server 1, $PAGEB for page server 2 and $PAGEC for page server 3; all on three different nodes"

sed -i "s/new_value/$PAGEA/g" page_p1.yaml

sed -i "s/new_value/$PAGEB/g" page_p2.yaml

sed -i "s/new_value/$PAGEC/g" page_p3.yaml

#cat page_p1.yaml

echo "Start up the page servers"

kubectl apply -f page_p1.yaml

kubectl apply -f page_p2.yaml

kubectl apply -f page_p3.yaml

sleep 3

non_running_pods=$(kubectl get pods --field-selector=status.phase!=Running -o jsonpath='{.items[*].metadata.name}')

if [ -n "$non_running_pods" ]; then
  echo "The following pods are crashed:"
  echo "$non_running_pods"
  kubectl delete -f page_p1.yaml
  kubectl delete -f page_p2.yaml
  kubectl delete -f page_p3.yaml
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

kubectl delete -f page_p1.yaml

kubectl delete -f page_p2.yaml

kubectl delete -f page_p3.yaml

echo "Done"



