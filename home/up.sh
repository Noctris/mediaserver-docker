git pull 
rm /mnt/dockervol/traefik/servers/*
cp traefik-config/* /mnt/dockervol/traefik/servers/
sudo docker-compose -f docker-compose.yml \
-f management/portainer.yml \
-f management/phpmyadmin.yml \
-f services/mariadb_test.yml \
-f infra/influxdb.yml \
-f infra/mariadb.yml \
-f PVR/radarr_parents.yml \
-f PVR/sonarr_parents.yml \
-f PVR/radarr_kids.yml \
-f PVR/sonarr_kids.yml \
up -d