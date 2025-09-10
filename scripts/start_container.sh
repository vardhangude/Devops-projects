#!/bin/bash

set -e

#pull the docker image from dockerhub
docker pull vardhan018/aws-cicd-app

#run the docker image in the inter-active terminal

docker run -d 8000:8000  vardhan018/aws-cicd-app