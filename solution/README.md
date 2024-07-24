# Part I

## Commands Executed

```sh
docker run -d --name csvserver infracloudio/csvserver:latest
- to run the container 
docker ps
- to list the containers
docker logs csvserver
- to check container logs
./gencsv.sh 2 8
- execute shell script
docker run -d --name csvserver -v $(pwd)/inputFile:/csvserver/inputdata infracloudio/csvserver:latest
- run the container in the detach mode
docker ps
docker exec -it csvserver sh
- to acess the container
netstat -tuln
- check the port where the app is running
docker stop csvserver
docker rm csvserver
docker run -d --platform linux/amd64 --name csvserver -v $(pwd)/inputFile:/csvserver/inputdata -e CSVSERVER_BORDER=Orange -p 9393:9300 infracloudio/csvserver:latest
- run the container with env variables
curl http://localhost:9393

