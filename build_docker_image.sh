#!/bin/bash

# Define the image name
image_name="ai-chatbot"

# Navigate to the directory containing the Dockerfile
cd Dockerfile

# Build the Docker image
docker build -t $image_name .

# Confirm the image was built successfully
if [ $? -eq 0 ]; then
    echo "Docker image $image_name built successfully."
else
    echo "Failed to build Docker image $image_name."
    exit 1
fi

# Run the Docker image as a container
docker run -d -p 4000:80 $image_name

# Confirm the container is running
if [ $? -eq 0 ]; then
    echo "Docker container for $image_name is running."
else
    echo "Failed to run Docker container for $image_name."
    exit 1
fi