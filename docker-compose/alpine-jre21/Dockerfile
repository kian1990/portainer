FROM alpine:latest

RUN apk update && \
	apk add --no-cache openjdk21-jre tzdata fontconfig font-noto-cjk && \
	cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	echo "Asia/Shanghai" > /etc/timezone && \
	mkdir -p /opt/app

WORKDIR /opt/app

CMD ["sh"]