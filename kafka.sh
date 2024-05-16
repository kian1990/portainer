#!/bin/bash
docker stop kafka
docker rm kafka
docker rmi kafka
docker volume rm kafka_data
docker volume create kafka_data
docker run -d -p 9092:9092 --name kafka --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v kafka_data:/data apache/kafka:latest
