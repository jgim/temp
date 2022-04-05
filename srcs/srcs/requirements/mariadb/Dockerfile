FROM alpine:3.15

RUN apk update && apk upgrade

RUN apk add mariadb mariadb-client
RUN mariadb-server

RUN mkdir -p /run/mysqld

COPY tools/ /

RUN sed -i -e "s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

#COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
#COPY conf/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf


EXPOSE 3306

CMD ["sh", "start.sh"]
