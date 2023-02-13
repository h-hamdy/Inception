FROM debian:buster

# install nginx
RUN apt-get update && apt-get install -y nginx

# install openssl
RUN	apt-get install openssl

# generate a private key and (CSR)
RUN mkdir /etc/nginx/ssl
RUN	openssl req -x509 -newkey rsa:2048 -sha256 -days 356 \
	-nodes \
	-keyout /etc/nginx/ssl/crypto.key \
	-out /etc/nginx/ssl/crypto.pem \
	-subj "/CN=demo.example.com/C=US"

COPY conf/nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]