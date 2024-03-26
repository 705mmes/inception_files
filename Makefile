create:
	mkdir ../inception_vol
	mkdir ../inception_vol/mariadb
	mkdir ../inception_vol/wordpress
	sudo docker-compose --env-file srcs/.env -f srcs/docker-compose.yml up -d --build

up:
	sudo docker-compose --env-file srcs/.env -f srcs/docker-compose.yml up -d --build
	
restart:
	sudo docker-compose -f srcs/docker-compose.yml restart

stop:
	sudo docker-compose -f srcs/docker-compose.yml stop

down:
	sudo docker-compose -f srcs/docker-compose.yml down

clean: down
	sudo rm -rf ../inception_vol
	sudo docker volume rm srcs_mariadb_vol srcs_wordpress_vol

ps:
	sudo docker-compose -f srcs/docker-compose.yml ps

logs:
	sudo docker-compose -f srcs/docker-compose.yml logs

top:
	sudo docker-compose -f srcs/docker-compose.yml top

re:	down clean up logs
