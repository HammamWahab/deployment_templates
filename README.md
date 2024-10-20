# Python Application Deployment with Docker and K3d Kubernetes Cluster

This repository is a template designed to simplify the deployment of basic Python applications using Docker in a Kubernetes environment. It leverages **k3d** for creating a lightweight Kubernetes cluster, making it ideal for testing, Proof of Concept (PoC), and development purposes. The repository also includes scripts and manifests for deploying to Kubernetes, scaling applications, managing persistent storage, and more.

## Repository Structure


## Features

1. **Dockerized Python Application**: The repository includes a `Dockerfile` to package your Python application into a container image.
2. **Local Kubernetes with K3d**: Use `k3d` to create a lightweight Kubernetes cluster for local testing.
3. **Local Docker Registry**: Easily create and use a local Docker registry to store your application image.
4. **Kubernetes Resources**: Deployment, service, ingress, persistent volume, and scaling manifests are included for flexible deployment.
5. **Kubernetes Dashboard**: Scripts are provided to enable and access the Kubernetes Dashboard for cluster management.
6. **Kustomize Support**: Manage Kubernetes resource configuration using `kustomize` for ease of deployment across environments.

## Getting Started

### Prerequisites

- Docker
- k3d (Kubernetes in Docker)
- kubectl (Kubernetes CLI)
- Python 3.x

### Steps to Deploy

1. **Clone the repository**:
```bash
git clone https://github.com/deployment_templates.git
cd deployment_templates
```

2. **Build the Docker image**:
```bash
docker build -t your-python-app .
```

3. **Create a k3d Cluster**: 
Navigate to the `k3d/2_create_k3d_cluster` folder and run:

```bash
./create_cluster.sh
```
4. **Push Image to Local Registry**:
  Navigate to the `k3d/1_registry folder` and create a local registry:

```bash
./create_registry.sh
./push_to_registry.sh
```
5. **Deploy to Kubernetes**:
    Navigate to the `k3d/3_create_deployment` folder and run the deployment script:

```bash
./deployment.sh
```
7. **Expose the Service**: 
   Use the service script to expose your application:

```bash
./k3d/4_create_service/service.sh
```
8. **Access the Kubernetes Dashboard**: 
   Navigate to `k3d/6_dashboard` and create a token to access the dashboard

```bash
./create_dashboard.sh
```


9. **Scaling the Application**:
To scale the application, navigate to the `k3d/8_scale` folder and use the `scale.sh` script to adjust the number of replicas.

10. **Persistent Volume Setup**:
The repository includes configuration for persistent volumes in `k3d/7_persistent_volume`. Modify and apply these manifests if your application requires persistent storage.

11. **Customizing the Setup**:
You can modify Kubernetes resources using kustomize. The kustomization.yaml files in the `k3d/9_kustomization` folder allow you to define and customize configurations for different environments.


### References: 
- [K3D Deployment](https://hackernoon.com/how-to-deploy-apps-to-a-local-k3d-cluster)
- [Deployment of Web Apps](https://www.endpointdev.com/blog/2022/01/kubernetes-101/)
- [Setup Kubernetes Dashboard](https://medium.com/@mamoonaaslam/setting-up-kubernetes-dashboard-on-k3d-cluster-7bd2e261e42a
)