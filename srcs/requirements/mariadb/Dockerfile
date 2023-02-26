FROM debian:buster

RUN apt update && apt -y install mariadb-server && service mysql start

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY conf/script.sh /

COPY conf/my.cnf /etc/mysql/conf.d/my.cnf

RUN	chmod +x script.sh

ENTRYPOINT ["./script.sh"]