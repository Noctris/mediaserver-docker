git pull 
rm /mnt/dockervol/traefik/servers/*
cp traefik-servers/* /mnt/dockervol/traefik/servers/
sudo docker-compose -f docker-compose.yml \
-f management/portainer.yml \
#-f management/portainer-agent.yml \
-f management/phpmyadmin.yml \
-f management/phpipam.yml \
-f services/mariadb_test.yml \
-f infra/influxdb.yml \
-f infra/mariadb.yml \
-f PVR/radarr_parents.yml \
-f PVR/sonarr_parents.yml \
up -d