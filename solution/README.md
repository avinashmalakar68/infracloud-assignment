# Part I

## Commands Executed

```sh
docker run -d --name csvserver infracloudio/csvserver:latest
docker ps
docker logs csvserver
./gencsv.sh 2 8
docker run -d --platform linux/amd64 --name csvserver -v /Users/avinash.malakar/Downloads/csvserver/inputFile:/csvserver/inputdata infracloudio/csvserver:latest
docker ps
docker exec -it csvserver sh
netstat -tuln
docker stop csvserver
docker rm csvserver
docker run -d --platform linux/amd64 --name csvserver -v /Users/avinash.malakar/Downloads/csvserver/inputFile:/csvserver/inputdata -e CSVSERVER_BORDER=Orange -p 9393:9300 infracloudio/csvserver:latest
curl http://localhost:9393
