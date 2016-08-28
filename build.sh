#! /bin/bash


# grafana git tag to build
VERSION=3.1.1
VERSION_SUFFIX=1471857718
DOCKERHUBUSER=heziegl

# docker image to build
IMAGE_NAME=$DOCKERHUBUSER/rpi-grafana:$VERSION

# build grafana runtime
sudo docker build --build-arg VERSION=$VERSION --build-arg VERSION_SUFFIX=$VERSION_SUFFIX -t $IMAGE_NAME .

# push to docker hub
sudo docker push $IMAGE_NAME

