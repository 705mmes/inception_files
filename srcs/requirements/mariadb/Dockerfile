FROM debian:11
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install mariadb-server -y
COPY ./requirements/mariadb/conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./requirements/mariadb/tools/maria_script.sh ./
EXPOSE 3306
CMD ./maria_script.sh
