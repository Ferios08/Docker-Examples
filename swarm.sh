docker swarm init --advertise-addr 172.16.1.4


docker swarm join --token SWMTKN-1-2oyfv41xva2gucg7dmu9553ptw1kp1mlkq86o0yjz3y4pjh7un-1rhhn5atcin8k05a3p13uwwgl 172.16.1.4:2377



curl -L https://downloads.portainer.io/portainer-agent-stack.yml -o portainer-agent-stack.yml


docker stack deploy -c portainer-agent-stack.yml portainer