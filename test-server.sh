#!/bin/bash
docker-compose -f traefik/docker-compose.yaml --env-file ../.env up -d
docker-compose -f portainer/docker-compose.yaml --env-file ../.env up -d
