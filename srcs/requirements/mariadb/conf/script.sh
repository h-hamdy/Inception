#!/bin/bash
chown -R mysql:mysql /var/lib/mysql
cat > /etc/mysql/init.sql <<EOF
CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON wordpress.* TO '$MYSQL_USER'@'%' WITH GRANT OPTION;
ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';
FLUSH PRIVILEGES;
EOF
cat > /etc/mysql/conf.d/init.cnf <<EOF
[mysqld] 
init-file="/etc/mysql/init.sql"
EOF
mysql_install_db
exec "$@"