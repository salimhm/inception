FROM	alpine:edge

RUN	apk update && apk add curl php php-phar php-fpm mysql mysql-client php82-mysqli php82-iconv php82-mbstring

RUN	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar &&\
	chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY	./tools/initbackup.sh /

COPY	./tools/all-in-one.zip /

WORKDIR	/var/www/html

COPY	./tools/init.sh /

COPY	./tools/backup.sh /

RUN	chmod +x /init.sh /backup.sh /initbackup.sh

ENTRYPOINT	["sh", "/initbackup.sh"]

CMD	sh /init.sh
