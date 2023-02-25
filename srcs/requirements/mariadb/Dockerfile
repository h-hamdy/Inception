FROM debian:buster
RUN apt-get update
RUN apt-get install mariadb-server -y
RUN mkdir /run/mysqld
RUN chown mysql:mysql /run/mysqld
COPY conf/script.sh .
RUN chmod +x script.sh
ENTRYPOINT ["./script.sh"]
CMD ["mysqld", "--bind_address=*"]