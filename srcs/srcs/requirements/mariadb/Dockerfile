FROM alpine:3.15

RUN apk update && apk upgrade

RUN apk add mariadb mariadb-client

RUN mkdir -p /run/mysqld

COPY tools/ /
COPY conf/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf
#COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

EXPOSE 3306

CMD ["sh", "start.sh"]
