git pull && sudo docker-compose -f docker-compose.yml \
-f mgmt/portainer.yml \
-f services/heimdall.yml \
-f monitoring/zabbix.yml \
up