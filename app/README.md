# Minikube 

## Installation

### Install Minikube

- https://minikube.sigs.k8s.io/docs/start/?arch=%2Flinux%2Fx86-64%2Fstable%2Fbinary+download#Service

### Install Kubectl
- https://kubernetes.io/docs/tasks/tools/#kubectl

### Install Docker
- https://docs.docker.com/engine/install/ubuntu/


## Hello Minikube

Minikube and Kubectl, and some hypervisor (docker, qemu, kvm...) must be installed

### Objectives 

- Deploy a sample application to minikube.
- Run the app.
- View application logs.


### Guide

```bash
# create a cluster
minikube start
```

```bash
# open dashboard
minikube dashboard
```

since `minikube dashboard` doesn't have a way to bind to all network interfaces (0.0.0.0), you can use `kubectl proxy`. 
```bash
kubectl proxy --address="0.0.0.0" --port="9999" --accept-hosts='^.*' --disable-filter=true
# vagrant ssh app -c "kubectl proxy --address='0.0.0.0' --port=37971 --accept-hosts='^.*' --disable-filter=true"
```