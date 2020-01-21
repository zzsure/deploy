#!/bin/sh
docker-compose down
ARG="history" docker-compose up -d az-fin
