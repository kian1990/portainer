#!/bin/bash
docker stop portainer
docker rm portainer
#docker rmi portainer/portainer-ce
docker volume rm portainer_data
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9000:9000 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
