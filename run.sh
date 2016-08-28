#! /bin/bash


VERSION=3.1.1

sudo docker run -t -d --name=grafana \
                -p 3000:3000 \
                -v $(pwd)/etc_grafana:/etc/grafana \
                -v $(pwd)/grafana_data:/data \
                heziegl/rpi-grafana:$VERSION
