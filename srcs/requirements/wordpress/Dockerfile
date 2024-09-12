FROM debian:bullseye-slim

RUN apt update && apt upgrade -y && apt install -y php-fpm php-mysql php-mysqli curl


CMD ["php-fpm7.4", "-F"]
