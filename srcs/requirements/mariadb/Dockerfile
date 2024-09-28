FROM debian:bullseye-slim

RUN apt update && \
    apt install -y mariadb-server

RUN mkdir -p /run/mysqld
RUN chown -R mysql:mysql /run/mysqld

COPY ./tools/setup.sh /
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/.
# COPY init.sql /etc/sql/init.sql

RUN chmod +x /setup.sh

EXPOSE 3306

ENTRYPOINT ["/setup.sh"]





