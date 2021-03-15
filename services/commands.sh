docker service create --name mywebapp --replicas 3 --publish 8080:80 nginx

docker service ls
ocker service ps mywebapp
docker service inspect mywebapp
docker service inspect --pretty mywebapp

docker service logs mywebapp
docker service scale mywebapp=5
docker service update --limit-cpu 1 mywebapp