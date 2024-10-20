#!/usr/bin

export REGISTRY_NAME=localhost:5050
export LOCAL_IMAGE_NAME=go-web-server:latest
export IMAGE_NAME=go-web-server:latest
export VERSION=v0.1

docker tag ${LOCAL_IMAGE_NAME} ${REGISTRY_NAME}/${IMAGE_NAME}:${VERSION}
docker push ${REGISTRY_NAME}/${IMAGE_NAME}:${VERSION} 