FROM debian:buster

RUN apt-get update && apt-get install -y wget && \
	wget https://github.com/google/cadvisor/releases/download/v0.39.0/cadvisor -O /usr/bin/cadvisor \
    && chmod +x /usr/bin/cadvisor

CMD [ "/usr/bin/cadvisor" ]