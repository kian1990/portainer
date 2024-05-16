#!/bin/bash
docker stop hadoop
docker rm hadoop
docker rmi hadoop
docker volume rm hadoop_data
docker volume create hadoop_data
docker run -d -p 8042:8042 -p 8088:8088 -p 50070:50070 --name hadoop --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v hadoop_data:/data sequenceiq/hadoop-docker:2.7.1
