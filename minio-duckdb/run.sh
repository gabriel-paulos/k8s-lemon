#!/bin/bash

kubectl apply -f ./duckdb-minio.yaml

kubectl port-forward duckdb-s3-demo/duckdb-s3-demo- 50000:50000
