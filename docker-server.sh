#!/bin/bash
docker-compose -p traefik -f traefik/docker-compose.yaml --env-file ../.env up -d --remove-orphans

# docker-compose -f infrastructure/authentik/docker-compose.yaml --env-file ../.env up -d --remove-orphans -p authentik
# docker-compose -f monitoring/dozzle/docker-compose.yaml --env-file ../.env up -d --remove-orphans
# docker-compose -f management/portainer-ee/docker-compose.yaml --env-file ../.env up -d --remove-orphans
# docker-compose -f infrastructure/emqx-cluster/docker-compose.yaml --env-file ../.env up -d --remove-orphans
# docker-compose -f smarthome/node-red/docker-compose.yaml --env-file ../.env up -d --remove-orphans
# docker-compose -f smarthome/home-assistant/docker-compose.yaml --env-file ../.env up -d --remove-orphans
# docker-compose -f infrastructure/samba/docker-compose.yaml --env-file ../.env up -d --remove-orphans
# docker-compose -f infrastructure/adguard/docker-compose.yaml --env-file ../.env up -d --remove-orphans
# docker-compose -f web/blog.vanhoof.me/docker-compose.yaml --env-file ../.env up -d --remove-orphans
# docker-compose -f smarthome/home-panel/docker-compose.yaml --env-file ../.env up -d --remove-orphans
# docker-compose -p tabletpanel -f smarthome/home-panel/docker-compose.yaml --env-file ../.env up -d --remove-orphans