# You can extract configurations from running containers as follows

# Config files from wordpress & nginx container

docker cp wordpress:/etc/php/7.4/fpm/pool.d/www.conf ./srcs/requirements/wordpress/.
docker cp nginx:/etc/nginx/sites-available/default ./srcs/requirements/nginx/.

# Config files from mariadb

docker cp mariadb:/etc/mysql/mariadb.conf.d/50-server.cnf ./srcs/requirements/mariadb/.

# Inception 42

```sh
docker logs <ncontainer_name>
```

```sh
sudo vim /etc/hosts
127.0.0.1 example.42.fr
```

# Docker on my VM

```sh
sudo apt-get update
sudo apt-get install ca-certificates curl make
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo systemctl start docker
# edit the path config of /Users/user into /home/user
sudo make all
```

## Usage

```sh
git clone <repository_url>
cd <repository_directory>
```

The website should be accessible at `https://localhost` or `https://jnicolas.42.fr`

## Project Notes

### Viewing Docker Images, Containers, Volumes, and Networks

- Show Docker images:

  ```sh
  docker images
  ```

- Show Docker containers:

  ```sh
  docker ps
  ```

- Show Docker volumes:

  ```sh
  docker volume ls
  ```

  Inspect a volume:

  ```sh
  docker volume inspect <volume_name>
  ```

- Show Docker networks:
  ```sh
  docker network ls
  ```

### Useful Commands for Debugging Docker Containers

- Show logs:

  ```sh
  docker-compose logs
  ```

- Run a container in interactive mode:

  ```sh
  docker run -it <image_ID>
  ```

- Execute a command inside a running container:

  ```sh
  docker exec <container_name> <command>
  ```

- Execute an interactive command inside a running container:

  ```sh
  docker exec -it <container_name> <command>
  ```

- Open a shell inside a running container:
  ```sh
  docker exec -it <container_name> sh
  ```

#Test MariaDB Connectivity Inspect the Database:

```sh
docker exec -it <wordpress_container_name> sh
mysql -h <mariadb_container_name> -u <db_user> -p
docker exec -it <mariadb_container_name> mysql -u root -p
docker logs <mariadb_container_name>
```
