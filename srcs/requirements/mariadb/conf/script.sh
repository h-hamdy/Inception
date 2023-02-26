#!/bin/bash

set -x
chown -R mysql:mysql /var/lib/mysql

echo "CREATE DATABASE IF NOT EXISTS $DB_NAME ;" >> db1.sql
echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' ;" >> db1.sql
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$MYSQL_USER'@'%' ;" >> db1.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

/etc/init.d/mysql start

mysql < db1.sql

kill $(cat /var/run/mysqld/mysqld.pid)
mysqld