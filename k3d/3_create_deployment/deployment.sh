#!/usr/bin

export DEPLOYMENT=deploy-app
export REGISTRY_NAME=k3d-test-app-registry
export REGISTRY_PORT=5050
export IMAGE=${REGISTRY_NAME}:${REGISTRY_PORT}/postgres:v0.1


kubectl create deployment ${DEPLOYMENT} --image=${IMAGE}