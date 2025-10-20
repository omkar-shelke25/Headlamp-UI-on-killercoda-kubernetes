#!/bin/bash

# Create namespace
kubectl create namespace headlamp

# Add Headlamp repo
helm repo add headlamp https://kubernetes-sigs.github.io/headlamp/
helm repo update

# Install Headlamp with NodePort
helm install headlamp headlamp/headlamp \
  --namespace headlamp \
  --set service.type=NodePort \
  --set service.nodePort=30080

# Wait for deployment
kubectl -n headlamp rollout status deploy/headlamp --timeout=120s

# Create and save token
kubectl create token headlamp -n headlamp > /root/headlamp-token

echo "Headlamp installed successfully"
