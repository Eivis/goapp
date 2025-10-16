# goapp

This repo contains "Hello World" http application. 

|  File | Describtion  |
|---|---|
| hello-world.go |  The app written in golang |
| Dockerfile |  Dockerized app|
| .github/workflows//docker-image.yml | Github actions workflow building and pushing the dockerfile to Dockerhub registry and updating kubernetes manifest with the latest tag |

## Github actions CI

The workflow consists of two jobs:

* `build` - building docker image, taging it with `latest` and short version of the current commit name `$(git rev-parse --short HEAD)` then pushing the image to Dockerhub.

* `update-manifest` - using private access token edits deployment manifest stored in the [kubernetes-vin](https://github.com/Eivis/kubernetes-vin/) repository with the short version of the current current commit name. This action trigers argocd to deploy the new Docker image.
