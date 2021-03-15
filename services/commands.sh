docker service create --name mywebapp --replicas 3 --publish 8081:80 firasdotcom/todofront

docker service ls
ocker service ps mywebapp
docker service inspect mywebapp
docker service inspect --pretty mywebapp

docker service logs mywebapp
docker service scale mywebapp=5
docker service update --limit-cpu 1 mywebapp