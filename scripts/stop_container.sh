#!/bin/bash
 
#stop the running container (if any)
containerId = docker ps | awk -F" " '{Print $1}'
docker rm -f $containerId
