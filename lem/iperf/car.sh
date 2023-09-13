#!/bin/bash

contain_ip=$(hostname -i)

#echo "$contain_ip" >> /mnt/addrs

page_ip=$(cat /mnt/addrs.txt)

echo waiting for page_ip to be written
sleep 2

sed -i '/PEER:/c\\PEER: '"$page_ip"'' /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/remon.config

cp /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/remon.config /mnt/duck.txt

#sed -i '/PEER:/s/$/ '"$page_ip"'/g' /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/remon.config

#sed "s/PEER: &/ $page_ip/" /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/remon.config

cd /mnt/logs

max_file=$(ls -l . | sort | tail -n 1)

numb=$(echo "$max_file" | sed "s/[^0-9]* //g")

new_numb=$((numb+1))

new_file=$(echo "log$new_numb")

touch $new_file

(cat /mnt/tpch_3_0_1/dbgen/10G_q5/run.sql | /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/duckdb) >> /mnt/logs/$new_file


