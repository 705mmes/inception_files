FROM debian:11
RUN apt-get update -y && apt-get upgrade -y 
RUN apt-get install -y nginx && apt-get install vim -y && apt-get install openssl -y
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=login.42.fr/UID=smunio"
#RUN mkdir -p /var/run/nginx
#RUN chown -R www-data:www-data /var/www/html
COPY ./requirements/nginx/conf/nginx.conf /etc/nginx/nginx.conf
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
