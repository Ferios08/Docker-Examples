docker build -t todofront .

docker run -d  --name web -p 80:80 todofront