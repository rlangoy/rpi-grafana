#! /bin/bash


# grafana git tag to build
VERSION=2.6.0
DOCKERHUBUSER=heziegl

# docker image to build
IMAGE_NAME=$DOCKERHUBUSER/rpi-grafana:$VERSION

# build grafana runtime
sudo docker build -t $IMAGE_NAME .

# push to docker hub
sudo docker push $IMAGE_NAME

