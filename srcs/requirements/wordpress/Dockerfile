FROM debian:buster

RUN	apt-get -y update && apt-get -y upgrade

RUN	apt-get install -y php7.3-fpm php-mysql

RUN apt-get install wget unzip -y

WORKDIR /var/www/html

RUN wget https://wordpress.org/latest.zip && unzip latest.zip

RUN rm -f latest.zip

COPY tools/db.sh .

RUN	chmod +x db.sh

COPY conf/php-fpm.conf /etc/php/7.3/fpm/php-fpm.conf

COPY conf/wp-config.php .

RUN service php7.3-fpm start

ENTRYPOINT [ "sh", "db.sh" ]