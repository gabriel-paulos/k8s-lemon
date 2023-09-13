FROM ubuntu:20.04

WORKDIR /home

COPY ./build-release /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/

#COPY ./shared /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/shared

COPY ./libremon.so /home/ubuntu/lemon-all/remon/build-release/

#COPY ./duck.sh /home/ubuntu/duck.sh

COPY ./peer.sh /home/ubuntu/peer.sh

COPY ./co.sh /home/ubuntu/co.sh

COPY ./mutil.sh /home/ubuntu/mutil.sh

#RUN /bin/sh -c apt-get update &&     apt-get install -y     iperf3     && rm -rf /var/lib/apt/lists/*

RUN apt-get update

RUN apt-get install -y vim

RUN apt-get update && apt-get install -y netcat

CMD ["/home/ubuntu/mutil.sh"]
#CMD ["sleep", "600000"]
