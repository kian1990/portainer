FROM alpine:latest
 
LABEL name=alpine-jdk21 description="jdk21 base on alpine image"
 
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk update
RUN apk add --no-cache openjdk21
RUN mkdir -p /opt/app
COPY web.jar /opt/app
WORKDIR /opt/app

EXPOSE 8080 
CMD ["java","-jar","web.jar"]
