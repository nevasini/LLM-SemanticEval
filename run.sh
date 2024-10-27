#!/bin/bash

# Name of the Docker image
IMAGE_NAME="llm-eval-project"
CONTAINER_NAME="llm-eval-container"

# Path to the local project directory
LOCAL_PROJECT_DIR="$(pwd)"

# Run the Docker container with the entire project directory mounted
echo "Running Docker container from image: $IMAGE_NAME"
docker run --name $CONTAINER_NAME -v $LOCAL_PROJECT_DIR:/app $IMAGE_NAME

# Check if the container ran successfully
if [ $? -eq 0 ]; then
    echo "Docker container $CONTAINER_NAME ran successfully."
else
    echo "Failed to run Docker container $CONTAINER_NAME."
    exit 1
fi
