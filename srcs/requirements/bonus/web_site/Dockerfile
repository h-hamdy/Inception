FROM debian:buster

RUN apt update -y && apt install nodejs npm -y

COPY ./web_site home/app

WORKDIR /home/app

RUN npm init -y && npm install express -y

CMD ["node", "jsServer.js"]