#!/bin/bash
set -e 

#stop the running container (if any)
$dockerImg = docker ps | awk -F' ' "{print$1}"
docker rmi $dockerImg