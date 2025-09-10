#!/bin/bash
set -e

# Find the name of the image you want to remove
# Replace 'your-app-name' with the unique part of your image name
IMAGE_NAME=$(docker images | grep 'vardhan018/aws-cicd-app' | awk '{print $1}')

# Check if an image was found before trying to remove it
if [ ! -z "$IMAGE_NAME" ]; then
    echo "Removing existing image: $IMAGE_NAME"
    docker rmi "$IMAGE_NAME"
else
    echo "No matching image found."
fi 
