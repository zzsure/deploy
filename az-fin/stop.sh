#!/bin/sh
current=`date "+%Y%m%d%H%M%S"`
docker logs az-fin > /data/az-fin/log/$current.log
docker-compose down
