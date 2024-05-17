#!/bin/bash
docker stop redis
docker rm redis
docker volume rm redis_data
docker volume create redis_data
docker run -d -p 6379:6379 --name redis --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v redis_data:/data redis:latest
