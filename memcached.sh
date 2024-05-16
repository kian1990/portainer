#!/bin/bash
docker stop memcached
docker rm memcached
docker rmi memcached
docker volume rm memcached_data
docker volume create memcached_data
docker run -d -p 11211:11211 --name memcached --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v memcached_data:/data memcached:latest
