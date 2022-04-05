FROM alpine:3.15

RUN apk update && apk upgrade

RUN apk add openrc
RUN apk add mariadb
RUN apk add mariadb-client

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/start.sql /
COPY ./tools/wordpress.sql /

EXPOSE 3306

RUN rc-service mariadb start
RUN	mysql < start.sql
#RUN mysql < wordpress.sql;

CMD ["mysqld"]
