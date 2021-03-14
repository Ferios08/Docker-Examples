docker build -t todobackend .

# check on the network name: generated from docker-compose is database_dbnetwork
docker run --name backend -d \
-e DB_HOST="mydb" --network db-network \
-e DB_PORT="3306" -e DB_USER="user" -e DB_PASS="pass" -e DB_NAME="testdb" \
-e NODE_ENV="dev" -e PORT="1338" -p 1338:1338 todobackend