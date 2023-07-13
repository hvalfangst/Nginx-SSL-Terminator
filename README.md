# SSL terminator implemented with Nginx on Kubernetes for a basic Python Flask service


## Requirements

* x86-64
* Python 3.*
* Linux
* OpenSSL
* Docker
* Kubernetes

## Creating resources
The shell script "up.sh" is responsible for building the local Docker image and creating requested resources, which are defined in our k8s manifest.

```
sh up.sh
```

## Destroying resources
The shell script "down.sh" frees up allocated resources.

```
sh down.sh
```

## Running


```
1. kubectl port-forward {NGINX_DEPLOYMENT_POD} 443
2. Paste and run the following in Postman/Browser "https://127.0.0.1"
```