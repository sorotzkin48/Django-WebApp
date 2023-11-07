#!/bin/bash

# Define the container name
CONTAINER_NAME="my-django-app"

# Stop and remove the Docker container
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME

# Optionally, remove the Docker image
docker rmi final-project

echo "Container and image (if removed) are deleted."
