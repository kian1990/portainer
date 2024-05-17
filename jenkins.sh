#!/bin/bash
docker stop jenkins
docker rm jenkins
docker volume rm jenkins_data
docker volume create jenkins_data
docker run -d -p 8080:8080 -p 50000:50000 --name jenkins --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_data:/data jenkins/jenkins:latest
