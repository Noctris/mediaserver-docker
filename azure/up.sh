git pull 
# rm /mnt/dockervol/traefik/servers/*
# cp traefik-config/* /mnt/dockervol/traefik/servers/
sudo docker-compose -f docker-compose.yml \
-f management/portainer.yml \
-f management/phpipam.yml \
-f services/heimdall.yml \
up -d