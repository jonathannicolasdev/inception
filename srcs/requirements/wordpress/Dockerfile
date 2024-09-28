FROM debian:bullseye-slim

RUN apt update && apt upgrade -y && apt install -y php-fpm php-mysql php-mysqli curl

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/.

COPY ./tools/setup.sh .

RUN chmod +x setup.sh

EXPOSE 9000

CMD ["./setup.sh"]
