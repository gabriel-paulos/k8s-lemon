#!/bash/bin

docker build -t duck ./remon_container

docker build -t page ./page_container

docker network create mhm

docker run -dit --name page --network mhm --cpus=2 --ulimit nofile=102400:102400 -v /mnt/:/mnt/ page

sleep 3

docker run -dit --name duck --network mhm --cpus=6 --ulimit nofile=102400:102400 -v /mnt/:/mnt/ duck

#either ping like a health check or use docker events
#cat /mnt/log

while [ $(docker inspect -f '{{.State.Running}}' 'duck') = "true" ]
do
        echo "waiting..."
        sleep 5;
done

docker stop duck page
docker rm duck page
docker network rm mhm

