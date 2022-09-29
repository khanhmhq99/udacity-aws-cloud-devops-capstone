# Capstone-Global-Package-Tracking

Global package traking (GPT) provides end-to-end inbound and outbound item tracking, helps to plan, implement, and control the movement and storage of goods, services, or information within a supply chain and between the points of origin and consumption.

## Overview

In this project I applied the skills and knowledge which were developed throughout the Cloud DevOps Nanodegree program. These included:

- Working in AWS
- Using CircleCI to implement Continuous Integration and Continuous Deployment
- Building pipelines
- Working with CloudFormation to deploy clusters
- Building Docker containers in pipelines
- Building Kubernetes clusters

## Application

The Application is based on a python3 script using flask to render a simple webpages in the user's browse.

### File description

- `.circleci` - CircleCI Pipeline config.
- `gpt_app` - Application source code, Dockerfile, K8S deployment template.
- `Cloudfomration` - cluuster config used to deploy a kubernetes cluster using eksctl.
- `K8s` - config file for kubernetes cluster.
- `screenshots` - Screenshots for deployment, application logs and CircleCI pipeline.
- `Makefile` Set of instructions that you use to setup environment: setup, install, tests and lints ...
- `Dockerfile` Contains the commands used to create a docker image

```
│   .gitignore
│   Dockerfile
│   Makefile
│   README.md
│
├───.circleci
│       config.yml
│
├───CloudFormation
│       create-cluster.yml
│
├───gpt_app
│   │   .DS_Store
│   │   app.py
│   │   requirements.txt
│   │
...
│   │
│   └───template
│           index.html
│           single.html
│
├───k8s
│       deployment.yml
│
└───screenshots
        1-run-lint-failed.PNG
        2-run-lint-ok.PNG
        3-CircleCi-pipeline.PNG
        4-Check-deployment.PNG
        5-eks-stack-cloudformation.PNG
        6-gpt-web-app-access.PNG
        7-deploy-ok.PNG
        8-deployment-rolling-update-ok.PNG
        9-docker-image-pushed-dockerhub-ok.PNG
        10-CircleCi-docker-image-pushed-dockerhub-ok.PNG
```

## Getting Started

### Prerequisites

- AWS account
- Install and configure the necessary plugins : aws, git, docker, kubectl, eksctl

### Setup

Create EKS cluster by running the command below:

```sh
eksctl create cluster -f CloudFormation/create-cluster.yml
```

### Configure CircleCi environment variables

```sh
AWS_ACCESS_KEY_ID
AWS_DEFAULT_REGION
AWS_SECRET_ACCESS_KEY
DOCKERHUB_PASSWORD
DOCKERHUB_USERNAME
DOCKER_IMAGE_NAME
```

Run the CircleCi pipeline.

Make sure that your the local kubernetes this up-to-date with the aws eks cluster by running the command below :

```sh
aws eks update-kubeconfig --region us-west-2 --name gpt-app
```

## Check deployment

### Image repository

DockerHub: [gpt-app](https://hub.docker.com/repository/docker/khanhmhq/gpt-app)

### Running pods

```sh
kubectl get svc,po,deploy
```
