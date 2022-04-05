FROM alpine:3.14

RUN apk add --no-cache nginx openssl

COPY /conf/nginx.conf /etc/nginx/

RUN mkdir /etc/nginx/ssl && openssl req \
-x509 -nodes -days 365 -newkey rsa:2048 \
-keyout /etc/nginx/ssl/nginx.key \
-out /etc/nginx/ssl/nginx.crt \
-subj "/C=RU/ST=Moscow/L=Moscow/O=School21/CN=sprincip"

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]
