#!/bin/bash

# Variables
IMAGE_NAME="your-dockerhub-username/custom-apache"
TAG="latest"

# Build the Docker image
docker build -t $IMAGE_NAME:$TAG .

# Log in to DockerHub
echo "Logging in to DockerHub..."
docker login

# Push the Docker image to DockerHub
echo "Pushing the Docker image to DockerHub..."
docker push $IMAGE_NAME:$TAG