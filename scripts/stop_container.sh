#!/bin/bash

set -e

#pre-defined values
IMAGE_NAME="my_app_name"
CONTAINER_NAME="my_app_container"

if [ $(docker ps -a -q -f name=$CONTAINER_NAME) ]; then
    echo "Stopping and removing existing container..."
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
fi

 
#stop the running container (if any)
if [ $(docker images -q $IMAGE_NAME) ]; then
    echo "Removing existing image..."
    docker rmi $IMAGE_NAME
fi
