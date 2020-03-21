git pull 
rm /mnt/dockervol/traefik/servers/*
cp traefik-servers/* /mnt/dockervol/traefik/servers/
sudo docker-compose -f docker-compose.yml \
-f management/portainer.yml \
-f management/phpmyadmin.yml \
-f services/mariadb_test.yml \
up -d