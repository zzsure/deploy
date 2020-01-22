#!/bin/sh
docker-compose down
ARG="init" docker-compose run az-fin
