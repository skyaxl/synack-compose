#!/bin/zsh

docker container rm -f synack-compose_proxy_1
docker container rm -f synack-compose_registry_1
docker image rm -f synack-compose_registry
docker image rm -f synack-compose_proxy

rm -R -f synack-proxy
rm -R -f synack-registry
git clone git@github.com:skyaxl/synack-proxy.git
git clone git@github.com:skyaxl/synack-registry.git
docker-compose build
docker-compose --env-file ./dev.env up