# Traefik stack

This is traefik as a reverse proxy with Azure DNS Let's encrypt wildcard certification. It is setup with network separation in a DMZ fashion. Network segratation avoids that containers can talk to eachother when they don't need to.