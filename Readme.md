# Config files from wordpress & nginx container

docker cp wordpress:/etc/php/7.4/fpm/pool.d/www.conf ./srcs/requirements/wordpress/.
docker cp nginx:/etc/nginx/sites-available/default ./srcs/requirements/nginx/.

# Config files from mariadb

docker cp mariadb:/etc/mysql/mariadb.conf.d/50-server.cnf ./srcs/requirements/mariadb/.

# Inception 42

```sh
rm -rf mariadb wordpress

~/data
mkdir mariadb wordpress
```

```sh
sudo vim /etc/hosts

127.0.0.1 example.42.fr
```

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
