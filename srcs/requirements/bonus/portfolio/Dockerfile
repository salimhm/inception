FROM	debian:stable

RUN	apt-get update && apt-get install -y php8.2-fpm

RUN	mkdir -p /var/www/portfolio/

COPY	./tools/site.tar /var/www/portfolio/

WORKDIR	/var/www/portfolio

RUN	tar -xvf site.tar --strip-components=1 && mv public_html/* . && rm -rf public_html && rm site.tar

RUN	sed -i 's/John Doe/Salim Hm/' index.html && sed -i 's/FRONTEND WEB DESIGNER/A Life Wanderer :)/' index.html

EXPOSE	1234

CMD	["php-fpm8.2", "-F"]
