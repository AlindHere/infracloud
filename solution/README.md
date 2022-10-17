1. docker pull infracloudio/csvserver:latest
2. docker run infracloudio/csvserver:latest - [error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: no such file or directory]
3. chmod 755 gencsv.sh - to provide execution permission
4. ./gencsv.sh - to create the in inputFile
5. docker run -d --name "csvserver" -v /home/alind/Desktop/infracloud/infracloud/solution/inputFile:/csvserver/inputdata infracloudio/csvserver:latest
6. docker exec -it csvserver /bin/bash
7. netstat -lntp  - to check the process and local port, this can be alternatively done by doing docker inspect
8. docker stop csvserver
9. docker rm csvserver
10. docker run -d --name "csvserver" -v /home/alind/Desktop/infracloud/infracloud/solution/inputFile:/csvserver/inputdata -e CSVSERVER_BORDER=Orange -p 9393:9300 infracloudio/csvserver:latest