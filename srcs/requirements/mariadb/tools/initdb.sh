#!/bin/bash

#source ~/inception/srcs/.env
echo $DB_NAME
if [ ! -d "/var/lib/mysql/wpdb" ]; then
	cat << lol > init
	flush privileges;
	create database $DB_NAME;
	create user '$DB_USER'@'%' identified by '$DB_PASS';
	grant all privileges on $DB_NAME.* to '$DB_USER'@'%' identified by '$DB_PASS';
	flush privileges;
lol
	mariadbd --user=mysql --bootstrap < init
	rm init
	echo "Database created successfully!"
else
	echo "Error creating the Database :'("
fi
exec "$@"
