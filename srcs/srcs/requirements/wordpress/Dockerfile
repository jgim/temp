FROM alpine:3.15

RUN apk update && apk upgrade
RUN apk add openrc
RUN apk add php7 php-mysqli php-fpm
RUN apk add wget curl

RUN wget https://wordpress.org/latest.tar.gz \
	&& tar -xvf /latest.tar.gz && rm -rf /latest.tar.gz \
	&& mkdir -p /var/www/ && mv wordpress/ /var/www/

COPY /conf/wp-config.php /var/www/wordpress/

COPY /conf/www.conf /etc/php7/php-fpm.d/

RUN chown -R www-data:www-data /var/www/wordpress/ \
&& chmod -R 775 /var/www/wordpress/

EXPOSE 9000

CMD ["php-fpm7", "-F"]
