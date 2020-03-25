git pull 
rm /mnt/dockervol/traefik/servers/*
cp traefik-config/* /mnt/dockervol/traefik/servers/
sudo docker-compose -f docker-compose.yml \
-f management/portainer.yml \
-f management/phpmyadmin.yml \
-f services/mariadb_test.yml \
-f services/nntp2nntp.yml \
-f services/jackett.yml \
-f services/spotweb.yml \
-f services/parents_sabnzbd.yml \
-f services/private_sabnzbd.yml \
-f infra/influxdb.yml \
-f infra/mariadb.yml \
-f PVR/radarr_parents.yml \
-f PVR/bazarr.yml \
-f PVR/sonarr_parents.yml \
-f PVR/radarr_kids.yml \
-f PVR/sonarr_kids.yml \
-f mediaservers/emby.yml \
-f mediaservers/kids_plex.yml \
up -d --remove-orphans