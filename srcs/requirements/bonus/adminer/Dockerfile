FROM	debian:stable

RUN	apt-get update && apt-get install -y wget php8.2 php8.2-mysql php8.2-fpm

WORKDIR	/var/www/html

EXPOSE	8080

COPY	./tools/init.sh /

RUN	chmod +x /init.sh

ENTRYPOINT	["/init.sh"]

CMD	php-fpm8.2 -F
