#!/usr/bin
export DEPLOYMENT=app-deploy 
export SERVICE=app-deploy
export SERVICE_PORT=9091
export DEPLOYMENT_PORT=80


kubectl create service clusterip $SERVICE --tcp=${SERVICE_PORT}:${DEPLOYMENT_PORT}