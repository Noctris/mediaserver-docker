#!/bin/bash
docker-compose -f traefik/docker-compose.yaml --env-file ../.env up -d --remove-orphans
docker-compose -f portainer/docker-compose.yaml --env-file ../.env up -d --remove-orphans
