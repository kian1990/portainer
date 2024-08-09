#!/bin/bash
docker stop docker-easyconnect
docker rm docker-easyconnect
docker volume rm docker-easyconnect_data
docker volume create docker-easyconnect_data
docker run -d --device /dev/net/tun --cap-add NET_ADMIN -ti -e DISABLE_PKG_VERSION_XML=1 -e PASSWORD=root -e URLWIN=1 --name docker-easyconnect --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v $HOME/.ecdata:/root -p 5900:5901 -p 1080:1080 -p 8888:8888 -p 54530:54530 hagb/docker-easyconnect:7.6.7
