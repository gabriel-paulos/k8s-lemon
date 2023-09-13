FROM ubuntu:20.04

WORKDIR /home

#COPY ./build-release /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/

#COPY ./shared /home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/shared

#COPY ./libremon.so /home/ubuntu/lemon-all/remon/build-release/

COPY ./page_server_build-release /home/page_server/build-release/
#COPY ~/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/lemonade_swap /home/ubuntu/lemon-all/remon/build-release/lemonade_swap

#RUN ["mkdir", "/home/ubuntu/lemon-all/duckdb_fixed_version/duckdb_0_8_1_remon_atached/build-release/lemonade_swap/"]

COPY ./pg.sh /home/page.sh

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]

RUN apt-get update && apt-get install -y netcat

EXPOSE 3000

CMD ["/home/page.sh"]
#CMD ["sleep","60000"]
