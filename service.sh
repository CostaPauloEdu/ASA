#!/bin/bash

if [ $1 == "start" ];then
    if [ -z "$2" ];then
        echo "Not a possible to create a DNS Server because of the IP address not be found"
        exit
    else
        cd dns/primary
        sed -i "s/PRIMARY/$2/" db.asa.br
        sed -i "s/PRIMARY/$2/" named.conf.default-zones
        sed -i "s/SECONDARY/127.0.0.1/" db.asa.br
        sed -i "s/SECONDARY/127.0.0.1/" named.conf.default-zones
        cd ../../mail/smtp_postfix
        sed -i "s/NETWORK/$3\/$4/" main.cf
        docker-compose up -d --build
    fi
else
    if [ $1 == "stop" ];then
        docker-compose down
    else
        echo "Invalid Option!"
        exit
    fi
fi