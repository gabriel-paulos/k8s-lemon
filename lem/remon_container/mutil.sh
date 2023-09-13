#!/bin/bash

#/home/ubuntu/lemon-all/duck.sh

/home/ubuntu/peer.sh

sleep 2

page_ip=$(cat /mnt/addrs.txt)

#sed -i '/iperf3 -c/c\\iperf3 -c '"$page_ip"' > /mnt/iperf' /home/ubuntu/co.sh

/home/ubuntu/co.sh

wait -n

# Exit with status of process that exited first
exit $?
