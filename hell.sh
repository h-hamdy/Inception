#!/bin/sh
chown -R mysql:mysql /var/lib/mysql


echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;"> db1.sql
echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' ;">> db1.sql
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$MYSQL_USER'@'%' ;">> db1.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' ;">> db1.sql
echo "FLUSH PRIVILEGES;">> db1.sql

cat > /etc/mysql/conf.d/init.cnf <<EOF
[mysqld] 
init-file="/db1.sql"
EOF
mysql_install_db

#mysql -u root --password=$MYSQL_ROOT_PASSWORD
#mysql -u root --password=$MYSQL_ROOT_PASSWORD < db1.sql

exec $@


FROM debian:buster

RUN apt update && apt -y install mariadb-server

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY conf/script.sh /

RUN	chmod +x /script.sh

ENTRYPOINT [ "/script.sh" ]

CMD ["mysqld", "--bind_address=*"]