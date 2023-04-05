FROM debian:buster

RUN	apt-get -y update && apt-get -y upgrade && \
	apt-get install -y redis-server

COPY conf/redis.conf /etc/redis/redis.conf

CMD ["redis-server", "--protected-mode no"]
