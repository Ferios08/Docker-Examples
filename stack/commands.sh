docker build -t pythonapp .

docker stack deploy --compose-file docker-stack.yml stackapp

 docker stack services stackapp