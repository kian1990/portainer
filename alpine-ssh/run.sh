#!/bin/bash
docker stop alpine-ssh
docker rm alpine-ssh
docker volume rm alpine-ssh_data
docker volume create alpine-ssh_data
docker run -d -p 1000:22 --name alpine-ssh --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v alpine-ssh_data:/data alpine-ssh:latest
