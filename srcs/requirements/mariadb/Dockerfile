FROM debian:buster

RUN apt-get update -y && apt-get install mariadb-server -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN service mysql start

CMD [ "/usr/bin/mysqld_safe" ]