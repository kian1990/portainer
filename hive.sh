#!/bin/bash
docker stop hive
docker rm hive
docker rmi hive
docker volume rm hive_data
docker volume create hive_data
docker run -d -p 10000:10000 -p 10002:10002 --env SERVICE_NAME=hiveserver2 --name hive --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v hive_data:/data apache/hive:3.1.3
