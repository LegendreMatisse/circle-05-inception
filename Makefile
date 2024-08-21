#-all:

up:
	mkdir -p /home/mlegendr/data
	mkdir -p /home/mlegendr/data/wordpress
	mkdir -p /home/mlegendr/data/mariadb
	docker-compose -f srcs/docker-compose.yml up -d

build:
	docker-compose -f srcs/docker-compose.yml build

rebuild:
	docker-compose -f srcs/docker-compose.yml build --no-cache

stop:
	docker-compose -f srcs/docker-compose.yml stop

down:
	docker-compose -f srcs/docker-compose.yml down

logs:
	docker-compose -f srcs/docker-compose.yml logs

status:
	docker-compose -f srcs/docker-compose.yml ps

clean:
	docker-compose -f srcs/docker-compose.yml down --rmi all --volumes

fclean: clean
	rm -rf /home/mlegendr/data

re:
	clean rebuild up

.PHONY: up build rebuild stop down logs status clean fclean re