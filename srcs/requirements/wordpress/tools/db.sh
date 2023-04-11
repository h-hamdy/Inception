#!/bin/sh

mkdir -p /run/php
chown -R www-data:www-data /var/www/html

apt install curl -y

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

wp core install --url=$DOMAIN_NAME --title=my_website --admin_user=$MYSQL_USER --admin_password=$MYSQL_PASSWORD --admin_email=houssamhamdy223@gmail.com --skip-email --allow-root --path=wordpress
wp user create user houssamhamdy223@gmail.com --role=author --user_pass=1234 --allow-root --path=wordpress

wp plugin install redis-cache --activate --allow-root --path=wordpress
wp redis enable --allow-root --path=wordpress

/usr/sbin/php-fpm7.3 -F -R