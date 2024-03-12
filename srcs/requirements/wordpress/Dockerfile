FROM debian:11
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y wget
RUN apt-get install -y php \
php-fpm \
php-mysql \
mariadb-client
RUN wget https://fr.wordpress.org/wordpress-6.4-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.4-fr_FR.tar.gz && rm wordpress-6.4-fr_FR.tar.gz
COPY requirements/wordpress/conf/php.ini /etc/php/8.1/apache2/php.ini
COPY requirements/wordpress/conf/wp-config.php /var/wwww/wordpress/wp-config.php
EXPOSE 9000
RUN sleep 10
RUN chown -R root:root /var/www/wordpress
RUN mkdir /run/php
CMD /usr/sbin/php-fpm7.3 -F
