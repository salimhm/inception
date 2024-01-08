
#FROM	alpine:edge

#RUN	apk update

#COPY	./tools/site.tar /

#COPY	./tools/script.sh /

#RUN	tar -xvf /site.tar

#RUN	mkdir -p /var/www/html/portfolio

#WORKDIR	/var/www/html/portfolio

#RUN	mv /site/* /var/www/html/portfolio

#CMD	sh /script.sh

FROM	debian:stable

RUN	apt-get update

RUN	mkdir -p /var/www/portfolio/

COPY	./tools/site.tar /var/www/portfolio/

COPY	./tools/script.sh /

WORKDIR	/var/www/portfolio

RUN	tar -xvf site.tar --strip-components=1 && mv public_html/* . && rm -rf public_html && rm site.tar

RUN	sed -i 's/John Doe/Salim Hm/' index.html && sed -i 's/FRONTEND WEB DESIGNER/Life Wanderer :)/' index.html

EXPOSE	1234

CMD	sh /script.sh
