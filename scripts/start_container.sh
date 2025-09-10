#!/bin/bash

set -e

#version=`date + `

#pull the docker image from dockerhub
docker pull vardhan018/aws-cicd-app:latest

#run the docker image in the inter-active terminal
docker run -d -p 8000:8000 vardhan018/aws-cicd-app:latest
