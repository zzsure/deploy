#!/bin/sh
current=`date "+%Y%m%d%H%M%S"`
docker logs bitcoin-root > /data/bitcoin/log/$current.log
docker-compose down
