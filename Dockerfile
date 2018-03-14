FROM ubuntu

RUN apt-get update && \
    apt-get install -y nginx

COPY nginx.conf /etc/nginx/nginx.conf

VOLUME /var/www/html

EXPOSE 80

CMD nginx

