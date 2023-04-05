FROM debian:buster

RUN apt update -y

RUN apt install wget -y && apt-get install php php-mysql nginx -y

WORKDIR /var/www/html

RUN wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer.php && \
	chmod 755 /var/www/html/adminer.php

ENTRYPOINT [ "php", "-S", "0.0.0.0:8000", "adminer.php" ]