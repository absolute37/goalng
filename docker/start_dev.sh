#!/bin/sh
DIR=`dirname $0`

docker rm -f noname_api
docker rm -f noname_database
docker rm -f noname_database_postgres



echo "START DOCKER ✅"
# docker-compose -f $DIR/docker-compose.yml up -d --build noname_database
docker-compose -f $DIR/docker-compose.yml up -d --build noname_database_postgres
docker-compose -f $DIR/docker-compose.yml up -d --build noname_api
echo "END ✅"

sleep 1
echo "LOGS API ✅"
docker logs -f noname_api