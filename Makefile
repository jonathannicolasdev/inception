COMPOSE_PATH = srcs/docker-compose.yml
MARIADB_VOLUME = /Users/jonathannicolas/data/mariadb
WORDPRESS_VOLUME = /Users/jonathannicolas/data/wordpress

all: up

build:
	mkdir -p $(MARIADB_VOLUME) $(WORDPRESS_VOLUME)
	docker compose -f $(COMPOSE_PATH) up --build

up:
	mkdir -p $(MARIADB_VOLUME) $(WORDPRESS_VOLUME)
	docker compose -f $(COMPOSE_PATH) up

down:
	docker compose -f $(COMPOSE_PATH) down

clean:
	docker compose -f $(COMPOSE_PATH) down
	docker system prune -af
	docker volume prune -f
	docker ps -aq | xargs -r sudo docker rm -f

freset:
	rm -rf $(MARIADB_VOLUME) $(WORDPRESS_VOLUME)
	mkdir -p $(MARIADB_VOLUME) $(WORDPRESS_VOLUME)

fclean:
	make clean
	make freset