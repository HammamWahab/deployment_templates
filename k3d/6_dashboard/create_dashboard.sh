#!/usr/bin


#source: https://medium.com/@mamoonaaslam/setting-up-kubernetes-dashboard-on-k3d-cluster-7bd2e261e42a


kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml


#Create the service account:
kubectl create serviceaccount dashboard-admin

#Bind the service account to the cluster-admin role:

kubectl create clusterrolebinding dashboard-admin --clusterrole=cluster-admin --serviceaccount=default:dashboard-admin

#To authenticate yourself when logging into the dashboard, you’ll need a token associated with the service account we just created. Generate it with the following command:
kubectl create token dashboard-admin > token 


#Access the Kubernetes Dashboard
#Finally, we need to expose the dashboard so that it’s accessible via our local machine. You can do this using port forwarding:

kubectl port-forward -n kubernetes-dashboard service/kubernetes-dashboard 8443:443 --address 0.0.0.0