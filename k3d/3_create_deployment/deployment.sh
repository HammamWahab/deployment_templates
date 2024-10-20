#!/usr/bin

export DEPLOYMENT=app-deploy 
export REGISTRY_NAME=k3d-test-app-registry
export REGISTRY_PORT= 5050
export IMAGE=k3d-test-app-registry:5050/deploy:v0.1


kubectl create deployment ${DEPLOYMENT} --image=${IMAGE}