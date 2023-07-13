# REST API exposed with Django for Python on Kubernetes


## Requirements

* x86-64
* Python 3.*
* Linux
* Docker
* k8s

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

## Routes