FROM debian:stable

RUN apt-get update &&\
    apt-get install -y nginx vim openssl

RUN	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=US/ST=New York/L=New York/O=Your Organization/OU=Your Unit/CN=localhost"

COPY ./tools/wp.conf /etc/nginx/conf.d/

WORKDIR	/etc/nginx/conf.d/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
