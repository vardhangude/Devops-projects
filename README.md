
cription
This project is a showcase of my journey in building and deploying a Python application using modern DevOps practices. It serves as a complete, end-to-end demonstration of a full CI/CD pipeline, from writing code to containerization and live deployment.

Project 1: Python Web App Deployment
This project demonstrates the deployment of a simple Python web application. It covers the following key steps:

Python: A basic Flask web application that says "Hello, World!".

Docker: Building a Docker image for the Python application, making it portable and easy to run in any environment.

Container Registry: Pushing the Docker image to a public registry (Docker Hub) to make it accessible for deployment.

Kubernetes: Deploying the containerized application to a local Kubernetes cluster (Minikube) using YAML manifest files for both a Deployment and a Service.

Commands Used
docker build -t [image-name]:[tag] .

docker push [image-name]:[tag]

kubectl apply -f deployment.yaml

kubectl apply -f service.yaml

minikube service [service-name]

How to Navigate this Repository
Each project is contained within its own subdirectory.

You can navigate into each folder to see the source code, Dockerfile, and Kubernetes manifest files.

I hope this provides a clear overview of my skills in cloud-native application deployment.
