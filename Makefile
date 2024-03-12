up:
	sudo docker-compose --env-file srcs/.env -f srcs/docker-compose.yml up -d
restart:
	sudo docker-compose -f srcs/docker-compose.yml restart
stop:
	sudo docker-compose -f srcs/docker-compose.yml stop
down:
	sudo docker-compose -f srcs/docker-compose.yml down
clean:
	sudo docker system prune -a -f
ps:
	sudo docker-compose -f srcs/docker-compose.yml ps
logs:
	sudo docker-compose -f srcs/docker-compose.yml logs
top:
	sudo docker-compose -f srcs/docker-compose.yml top
re:	down clean up logs
