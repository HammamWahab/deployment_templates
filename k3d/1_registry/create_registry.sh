#!/usr/bin
export REGISTRY_NAME= test-app-registry
export REGISTRY_PORT= 5050


k3d registry create $REGISTRY_NAME --port ${REGISTRY_PORT}
