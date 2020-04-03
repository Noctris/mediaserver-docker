git pull 
# rm /mnt/dockervol/traefik/servers/*
# cp traefik-config/* /mnt/dockervol/traefik/servers/
sudo docker-compose -f docker-compose.yml \
-f management/portainer.yml \
-f management/phpipam.yml \
-f management/phpmyadmin.yml \
-f monitoring/zabbix.yml \
-f services/heimdall.yml \
-f infrastructure/mariadb.yml \
up -d