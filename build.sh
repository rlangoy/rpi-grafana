#! /bin/bash


# grafana git tag to build
VERSION=2.6.0

# host dir to copy result to
DIST_DIR=dist-$VERSION
IMAGE_NAME=heziegl/rpi-grafana:$VERSION

# build grafana runtime
sudo docker build -t $IMAGE_NAME .

