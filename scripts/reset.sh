#!/bin/bash

docker rm registry
docker volume ls
# set $1="--force" to force prune
docker volume prune $1
docker system prune -f
rm -rf ~/.signy
rm -rf ~/.docker/trust/tuf/localhost:5000
