#! /bin/bash


# grafana git tag to build
VERSION=2.6.0

# docker image to build
IMAGE_NAME=heziegl/rpi-grafana:$VERSION

# build grafana runtime
sudo docker build -t $IMAGE_NAME .

