FROM nginx:latest 

WORKDIR /usr/share/nginx/html

RUN chmod 755 -R /usr/share/nginx/html

ENTRYPOINT [ "nginx" ]

CMD [ "-g", "daemon off;" ]