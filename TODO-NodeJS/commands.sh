docker build -t todobackend .

docker run --name backend -d \
-e DB_HOST="10.0.0.4" --network db-network \
-e DB_PORT="3306" -e DB_USER="user" -e DB_PASS="pass" -e DB_NAME="testdb" \
-e NODE_ENV="dev" -e PORT="1338" -p 1338:1338 todobackend