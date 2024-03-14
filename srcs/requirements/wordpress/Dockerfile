FROM debian:11
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y wget
RUN apt-get install -y php \
php-fpm \
php-mysql \
mariadb-client
RUN wget https://fr.wordpress.org/wordpress-6.4-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.4-fr_FR.tar.gz && rm wordpress-6.4-fr_FR.tar.gz
RUN chown -R root:root /var/www/wordpress
COPY requirements/wordpress/conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY requirements/wordpress/tools/wp_script.sh ./
EXPOSE 9000
RUN mkdir /run/php
CMD ./wp_script.sh && /usr/sbin/php-fpm7.4 -F
