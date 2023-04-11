FROM debian:buster

RUN apt update -y && apt install vsftpd -y

COPY conf/vsftpd.conf /etc/vsftpd.conf

COPY tools/script.sh /

RUN chmod +x script.sh

RUN mkdir -p /var/run/vsftpd/empty

CMD [ "./script.sh" ]