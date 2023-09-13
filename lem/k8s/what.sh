#!/bin/bash

POD_NAME="duck"

# Check if the pod is running
if kubectl get pods "$POD_NAME" &> /dev/null; then
    STATUS=$(kubectl get pods "$POD_NAME" -o jsonpath='{.status.phase}')
    
    echo "STATUS is currently: $STATUS"

    while [ "$STATUS" = "Running" ]; do
        echo "Pod is running"
        # Perform actions when the pod is running
        sleep 5
    done
    echo "done"
fi
