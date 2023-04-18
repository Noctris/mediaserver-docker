#!/bin/bash
docker-compose -f traefik/docker-compose.yaml --env-file ../.env up -d --remove-orphans
docker-compose -f monitoring/dozzle/docker-compose.yaml --env-file ../.env up -d --remove-orphans
docker-compose -f portainer-ee/docker-compose.yaml --env-file ../.env up -d --remove-orphans
docker-compose -f infrastructure/emqx-cluster/docker-compose.yaml --env-file ../.env up -d --remove-orphans
