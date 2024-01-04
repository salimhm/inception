FROM	debian:stable

RUN	apt-get update && apt-get install redis -y

RUN	sed -i 's/daemonize yes/daemonize no/' /etc/redis/redis.conf &&\
	sed -i 's/bind 127.0.0.1 -::1/bind 0.0.0.0/' /etc/redis/redis.conf &&\
	sed -i 's/protected-mode yes/protected-mode no/' /etc/redis/redis.conf

CMD ["redis-server", "/etc/redis/redis.conf"]
