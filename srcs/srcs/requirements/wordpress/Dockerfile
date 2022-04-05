FROM alpine:3.15

RUN apk add --no-cache wget \
php7 php7-opcache php7-zlib php7-mbstring php7-session \
php7-fpm php7-mcrypt php7-soap php7-openssl php7-gmp \
php7-pdo_odbc php7-json php7-dom php7-pdo php7-zip php7-mysqli \
php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc \
php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader \
php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype

RUN wget https://wordpress.org/latest.tar.gz \
	&& tar -xvf /latest.tar.gz && rm -rf /latest.tar.gz \
	&& mkdir -p /var/www/ && mv wordpress/ /var/www/

COPY /conf/wp-config.php /var/www/wordpress/

COPY /conf/www.conf /etc/php7/php-fpm.d/

RUN chown -R nobody:nobody /var/www/wordpress/ \
&& chmod -R 775 /var/www/wordpress/

EXPOSE 9000

CMD ["php-fpm7", "-F"]
