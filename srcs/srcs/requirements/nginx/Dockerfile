FROM  alpine:3.15

RUN apk update && apk upgrade
RUN apk add nginx openrc vim openssl

COPY ./conf/nginx.conf /etc/nginx/

RUN mkdir /etc/nginx/ssl && openssl req \
	-x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/nginx/ssl/nginx.key \
	-out /etc/nginx/ssl/nginx.crt \
	-subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/CN=jgim.42.fr"

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
