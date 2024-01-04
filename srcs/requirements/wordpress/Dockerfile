FROM	debian:stable

RUN	apt-get update && apt-get install -y \
	curl \
	php8.2 \
	php8.2-fpm\
	php8.2-mysql

WORKDIR	/var/www/html

RUN	curl -o wordpress.tar.gz https://wordpress.org/wordpress-6.4.2.tar.gz &&\
	tar -xzf wordpress.tar.gz --strip-components=1 &&\
	chown -R www-data:www-data . &&\
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar &&\
	chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp &&\
	rm wordpress.tar.gz

RUN	export php_v=$(ls /etc/php/) && \
	sed -i "s#listen = /run/php/php$php_v-fpm.sock#listen = 9000#" /etc/php/$php_v/fpm/pool.d/www.conf

COPY	./tools/init.sh /var/www/html

EXPOSE	9000

ENTRYPOINT	["bash", "init.sh"]

CMD	/bin/bash -c "php-fpm8.2 -F"
