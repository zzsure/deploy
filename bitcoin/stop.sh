#!/bin/sh
current=`date "+%Y%m%d%H%M%S"`
docker logs bitcoin > /data/bitcoin/log/$current.log
docker-compose down
