#!/bin/bash

container_ip=$(hostname -i)

echo "Container IP address: $container_ip"

echo -n " $container_ip" > /mnt/addrs.txt

touch /mnt/cool.txt

(/home/page_server/build-release/page_server) > /mnt/cool.txt




