#!/bin/bash

echo "Starting pods"

#kubectl apply -f ../page.yaml

#sleep 1 

#kubectl get po -o wide | awk '{print $6}' | tail -n +2 > /mnt/addrs.txt

#cat /mnt/addrs.txt

#sleep 1

echo " " > /mnt/addrs.txt

kubectl apply -f ../remon.yaml

# Define the name of the pod
POD_NAME="duck"

sleep 10

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

kubectl delete -f ../remon.yaml

#kubectl delete -f ../page.yaml

echo "Done"

