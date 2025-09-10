#!/bin/bash

set -e

IMAGE_NAME="my-app-image"

# Check if the image exists before trying to remove it
if [ "$(docker images -q $IMAGE_NAME)" ]; then
  echo "Removing existing image..."
  docker rmi $IMAGE_NAME
else
  echo "Image does not exist, nothing to remove."
fi
