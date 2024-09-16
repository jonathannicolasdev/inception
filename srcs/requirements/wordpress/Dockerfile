FROM debian:bullseye-slim

RUN apt update && apt upgrade -y && apt install -y php-fpm php-mysql php-mysqli curl

COPY www.conf /etc/php/7.4/fpm/pool.d/.
RUN mkdir -p /run/php



CMD ["php-fpm7.4", "-F"]
