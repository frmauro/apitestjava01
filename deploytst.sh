#!/bin/bash
########################################################

## Shell Script to Build Docker Image and run.   

########################################################


# result=$( sudo docker images -q apitest01 )
# if [[ -n "$result" ]]; then
# echo "image exists"
# sudo docker rmi -f apitest01
# else
# echo "No such image"
# fi

# echo "build the docker image"

# echo "built docker images and proceeding to delete existing container"
# result=$( docker ps -q -f name=apitest01 )
# if [[ $? -eq 0 ]]; then
# echo "Container exists"
# sudo docker container rm -f apitest01
# echo "Deleted the existing docker container"
# else
# echo "No such container"
# fi

cp -a /home/francisco/estudos/azuredevops/myagent/_work/4/s/.  /home/francisco/estudos/azuredevops/myagent/_work/r3/a/

docker build -t javaapitest01 .

echo "built docker images and proceeding to delete existing container"

echo "Deploying the updated container"

docker run -d -p 8080:8080 --name javaapitest01  javaapitest01

echo "Deploying the container"