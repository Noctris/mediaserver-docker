docker-compose up -f environment.yml -d
cd proxy
docker-compose up -f traefik.yml -d