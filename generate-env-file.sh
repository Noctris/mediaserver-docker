echo TRAEFIK_ENTRY_POINT=$(TRAEFIK_ENTRY_POINT) >> $(Build.StagingDirectory)/.env
echo TRAEFIK_ENTRY_POINT_PORT=$(TRAEFIK_ENTRY_POINT_PORT) >> $(Build.StagingDirectory)/.env
echo TZ=Europe/Brussels >> $(Build.StagingDirectory)/.env
echo DOMAIN_NAME=$(VS_DOMAIN_NAME) >> $(Build.StagingDirectory)/.env
echo DOCKER_VOL_MOUNT=$(DOCKER_VOL_MOUNT) >> $(Build.StagingDirectory)/.env
echo PATH_P_TV_SHOWS=$(PATH_P_TV_SHOWS) >> $(Build.StagingDirectory)/.env
echo PATH_P_MOVIES=$(PATH_P_MOVIES) >> $(Build.StagingDirectory)/.env
echo PATH_DOWNLOADS=$(PATH_DOWNLOADS) >> $(Build.StagingDirectory)/.env
echo PATH_LYCHEE=$(PATH_LYCHEE) >> $(Build.StagingDirectory)/.env
cat $(Build.StagingDirectory)/.env