#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="adelm535/project4"

# Step 2
# Run the Docker Hub container with kubernetes 
kubectl run sklearn --image=$dockerpath:latest --port=80

# Step 3:
# List kubernetes pods in the `microservices` namespace
kubectl get pod 

# Step 4:
# Forward the container port to a host
kubectl port-forward sklearn 8000:80
