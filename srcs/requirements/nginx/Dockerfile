FROM debian:bullseye-slim

RUN apt update && apt upgrade -y && apt install -y nginx openssl

RUN mkdir -p /etc/nginx/ssl \
    && openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=CA/ST=Quebec/L=Quebec City/O=42/OU=42/CN=jnicolas.42.fr/UID=example" \
    && mkdir -p /var/run/nginx \
    && chown -R www-data:www-data /var/www/html

COPY ./conf/default /etc/nginx/sites-available/.


EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]