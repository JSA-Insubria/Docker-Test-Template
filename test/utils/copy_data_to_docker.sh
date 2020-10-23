#!/bin/bash

docker exec -u hadoop -it nodemaster rm /home/hadoop/FilesLocation.txt
#Copy new data
docker cp FilesLocation_1.txt nodemaster:/home/hadoop/FilesLocation.txt
#Exec -moveFile
docker exec -it -u hadoop nodemaster /home/hadoop/hadoop/bin/hdfs balancer -moveFile
