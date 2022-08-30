FROM nginx:latest 

LABEL maintener="Paulo Eduardo Azevedo da Costa"

RUN apt update && apt install -y \
    iputils-ping \
    net-tools \
    telnet \
    nano \
    procps \
    iproute2

WORKDIR /usr/share/nginx/html

RUN chmod 755 -R /usr/share/nginx/html

ENTRYPOINT [ "nginx" ]

CMD [ "-g", "daemon off;" ]