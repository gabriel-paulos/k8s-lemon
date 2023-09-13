#!/bin/bash

docker build -t duckdb-s3 . --no-cache

docker tag duckdb-s3 gabeee123/duckdb-s3:latest

docker push gabeee123/duckdb-s3
