git pull 
rm /mnt/dockervol/traefik/servers/*
cp traefik-config/* /mnt/dockervol/traefik/servers/
sudo docker-compose -f docker-compose.yml \
-f management/portainer.yml \
-f management/phpmyadmin.yml \
-f management/parents_htpcmanager.yml \
-f management/organizr.yml \
-f download/parents_tm.yml \
-f services/mariadb_test.yml \
-f services/nntp2nntp.yml \
-f services/jackett.yml \
-f services/spotweb.yml \
-f services/parents_sabnzbd.yml \
-f services/private_sabnzbd.yml \
-f services/parents_calibre.yml \
-f infra/influxdb.yml \
-f infra/mariadb.yml \
-f PVR/radarr_parents.yml \
-f PVR/parents_bazarr.yml \
-f PVR/parents_lazylibrarian.yml \
-f PVR/sonarr_parents.yml \
-f PVR/radarr_kids.yml \
-f PVR/sonarr_kids.yml \
-f mediaservers/emby.yml \
-f mediaservers/kids_plex.yml \
up -d --remove-orphans