#!/bin/bash
########################################################

## Shell Script to Build Docker Image and run.   

########################################################


result=$( docker images -q javaapitest01 )
if [[ -n "$result" ]]; then
  echo "image exists"
  docker rmi -f javaapitest01
else
  echo "No such image"
fi


echo "built docker images and proceeding to delete existing container"
result=$( docker ps -q -f name=javaapitest01 )
if [[ $? -eq 0 ]]; then
  echo "Container exists"
   docker container rm -f javaapitest01
  echo "Deleted the existing docker container"
else
  echo "No such container"
fi

cp -a /home/francisco/estudos/azuredevops/myagent/_work/4/s/.  /home/francisco/estudos/azuredevops/myagent/_work/r3/a/

echo "build the docker image"
docker build -t javaapitest01 .

echo "built docker images and proceeding to delete existing container"

echo "Deploying the updated container"

docker run -d -p 8080:8080 --name javaapitest01  javaapitest01

echo "Deploying the container"