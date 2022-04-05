FROM alpine:3.15

RUN apk update && apk upgrade

RUN apk add mariadb
RUN apk add mariadb-client
RUN apk add mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/start.sql /
COPY ./tools/wordpress.sql /

EXPOSE 3306

RUN service mysql start
RUN mysql < start.sql;
RUN mysql < wordpress.sql;

CMD ["mysqld"]
