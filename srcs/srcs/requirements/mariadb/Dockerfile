FROM alpine:3.15

RUN apk update && apk upgrade

RUN apk add mariadb mariadb-client

RUN mkdir -p /run/mysqld

COPY tools/ /

COPY ./conf/my.cnf /etc/mysql/my.cnf
RUN chmod 0444 /etc/mysql/my.cnf

EXPOSE 3306

CMD ["sh", "start.sh"]
