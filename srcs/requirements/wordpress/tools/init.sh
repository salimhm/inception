#!/bin/bash
function init() {
	sleep 10 #Wait a bit for the mariadb container to be created..
	wp config create --dbhost=mariadb:3306 --dbname=wpdb --dbuser=wpuser --dbpass=wppass --allow-root;
	wp core install --url=localhost --title="Sample site" --admin_user=lolilol --admin_password=lolilol@123 --admin_email=lolilol@lolilol.lol --allow-root;
	wp user create xd xd@xd.xd --role=editor --user_pass=xd@xd123 --allow-root;
	wp plugin install redis-cache --activate --allow-root

	sed -i "/define( 'DB_COLLATE', '' );/ a\\\n### REDIS ###\ndefine('WP_REDIS_HOST', 'redis');\ndefine('WP_REDIS_PORT', '6379');" wp-config.php
	wp redis enable --allow-root
	chown -R www-data:www-data /var/www/html/wp-config.php
	return 0;
}
if [ ! -f "/var/www/html/wp-config.php" ]; then
	init
	if [ $? -eq 0 ]; then
		echo "WP installed successfully"
	else
		echo "Could'nt install WP :'("
	fi
fi

exec "$@"
