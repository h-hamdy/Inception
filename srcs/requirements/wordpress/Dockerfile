FROM debian:buster

RUN	apt-get -y update && apt-get -y upgrade

RUN	apt-get install -y php7.3-fpm php-mysql

RUN apt-get install wget unzip -y

RUN wget https://wordpress.org/latest.zip && unzip latest.zip

# WORKDIR /

# RUN mv wordpress /var/www/html/

COPY info.php /var/www/html/

COPY php-fpm.conf /etc/php/7.3/fpm/php-fpm.conf

# RUN service php7.3-fpm start && service php7.3-fpm stop

RUN  service php7.3-fpm start
# RUN  service php7.3-fpm stop

CMD ["/usr/sbin/php-fpm7.3", "-F", "-R"]