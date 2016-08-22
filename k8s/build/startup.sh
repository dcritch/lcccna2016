#!/bin/bash
LOADED=$(/bin/php /var/www/html/db_check.php)
if [[ $LOADED -eq 0 ]]; then
	echo "load db" >> /tmp/db.log
	/bin/mysql -h "$MYSQL_HOST" -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE" < /gas.sql
else
	echo "dont load db" >> /tmp/db.log
fi
/sbin/httpd -DFOREGROUND
