FROM debian:buster

RUN apt-get update \
    && apt-get install -y \
    apache2 \
    apache2-utils \
    libapache2-mod-php \
    php \
    php-cli \
    php-curl \
    php-xml \
    php-imap \
    nano \
    dnsutils \
    iputils-ping

COPY permitions.sh .

RUN chmod 777 permitions.sh && bash permitions.sh

CMD tail -F /dev/null