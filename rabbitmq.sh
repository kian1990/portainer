#!/bin/bash
docker stop rabbitmq
docker rm rabbitmq
docker rmi rabbitmq
docker volume rm rabbitmq_data
docker volume create rabbitmq_data
docker run -d -p 15672:15672 --name rabbitmq --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v rabbitmq_data:/data rabbitmq:management
