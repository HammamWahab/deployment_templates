#!/usr/bin


export DEPLOYMENT=app-deploy

kubectl scale -n default deployment ${DEPLOYMENT} --replicas=1