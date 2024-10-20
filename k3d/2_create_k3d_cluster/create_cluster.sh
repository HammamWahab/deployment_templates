#!/usr/bin 


export CLUSTER_NAME=mycluster
export REGISTRY_NAME=k3d-test-app-registry
export CLUSTER_PORT=9900 
export REGISTRY_PORT= 5050



k3d cluster create $CLUSTER_NAME -p "${CLUSTER_PORT}:80@loadbalancer" \
--registry-use ${REGISTRY_NAME}:${REGISTRY_PORT} --registry-config ../1_registry/registries.yaml \
--agents 2