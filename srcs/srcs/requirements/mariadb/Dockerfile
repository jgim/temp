FROM alpine:3.15

RUN apk update && apk upgrade

RUN apk add openrc
#rc 서비스는 알파인에서 사용되는 초기화 시스템
RUN apk add mariadb

RUN openrc
RUN touch /run/openrc/softlevel
RUN mkdir -p /run/mysqld

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY tools/ /

EXPOSE 3306

CMD ["sh", "start.sh"]
