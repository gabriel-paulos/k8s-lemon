#!/bin/bash

/home/ubuntu/iperf

sleep 1

page_ip=$(cat /mnt/addrs.txt)

sed -i '/iperf3 -c/c\\iperf3 -c '"$page_ip"' > /mnt/iperf' /home/ubuntu/co.sh

./co.sh

wait -n

# Exit with status of process that exited first
exit $?
