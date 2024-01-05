#!/bin/sh

if [ ! -d "/var/www/html/wp-content/plugins/All-In-One-WP-Migration-With-Import-master/" ]; then
	sleep 10
	echo installing All in one
	wp plugin install /all-in-one.zip --activate
	sleep 10
	echo Activating All in one..
	wp plugin activate All-In-One-WP-Migration-With-Import-master
fi
crontab -l | sed "\$a  0 0 * * 0 sh /backup.sh" | crontab -

echo Backup server complete - Will run every sunday
exec "$@"
