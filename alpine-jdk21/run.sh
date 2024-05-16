#!/bin/bash
docker stop alpine-jdk21
docker rm alpine-jdk21
docker volume rm alpine-jdk21_data
docker volume create alpine-jdk21_data
docker run -d -p 1001:8080 --name alpine-jdk21 --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v alpine-jdk21_data:/data alpine-jdk21:latest
