FROM alpine:3.14

RUN apk add --no-cache mariadb mariadb-client

RUN mkdir -p /run/mysqld

COPY tools/ /
COPY conf/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

EXPOSE 3306

CMD ["sh", "start.sh"]
