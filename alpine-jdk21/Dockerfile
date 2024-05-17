FROM alpine:latest
 
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk update && \
	apk add --no-cache openjdk21 tzdata && \
	cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	mkdir -p /opt/app

COPY web.jar /opt/app
WORKDIR /opt/app

EXPOSE 8080 
CMD ["java","-jar","web.jar"]
