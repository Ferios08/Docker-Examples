docker network create db-network
docker run -d   --name mydb  --network db-network \
    -e MYSQL_ROOT_PASSWORD="password" \
    -e MYSQL_DATABASE="testdb" \
    -e MYSQL_USER="user" \
    -e MYSQL_PASSWORD="pass" \
    -v /opt/mysql:/var/lib/mysql  \
    -p 3306:3306   mysql:5.7


docker run -d --name phpmydadmin \
    --network db-network -e PMA_HOST=mydb  -p 8080:80 \
    phpmyadmin/phpmyadmin