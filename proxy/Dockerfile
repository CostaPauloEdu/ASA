FROM nginx:latest

LABEL maintener="Paulo Eduardo Azevedo da Costa"

RUN apt update && apt install -y \
    iputils-ping \
    net-tools \
    telnet \
    nano \
    procps \
    iproute2

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

EXPOSE 443