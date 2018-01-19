FROM alpine:latest
MAINTAINER yovio@hotmail.com

RUN set -ex \
    && apk add --no-cache bash \
    && mkfifo -m 0666 /var/log/cron.log \
    && ln -s /var/log/cron.log /var/log/crond.log
	
COPY start-cron /usr/sbin

CMD ["start-cron"]
