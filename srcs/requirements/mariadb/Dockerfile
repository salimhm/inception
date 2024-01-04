FROM	debian:stable

RUN	apt-get update && apt-get install -y mariadb-server

EXPOSE	3306

RUN	sed -i 's#bind-address\s*= 127.0.0.1#bind-address = 0.0.0.0#' /etc/mysql/mariadb.conf.d/50-server.cnf


RUN	mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld

COPY	./tools/initdb.sh /

ENTRYPOINT	["bash", "/initdb.sh"]

# Use mysqld to run MariaDB
CMD ["mysqld", "--user=mysql", "--bind-address=0.0.0.0"]

