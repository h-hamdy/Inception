#!/bin/sh

apt install curl wp-cli.phar -y

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp

wp core download --allow-root


wp core install --url=$DOMAIN_NAME --title=simple_title --admin_user=houssam --admin_password=1234 --admin_email=houssamhamdy223@gmail.com --skip-email --allow-root
wp user create user houssamhamdy223@gmail.com --role=author --user_pass=1234 --allow-root

/usr/sbin/php-fpm7.3 -F -R