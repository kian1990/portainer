#!/bin/bash
docker stop registry
docker rm registry
docker volume rm registry_data
docker volume create registry_data
docker run -d -p 5000:5000 --name registry --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v registry_data:/data registry:latest
