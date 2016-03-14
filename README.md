# rpi-grafana
Dockerfile for running [Grafana](http://grafana.org) on raspberry pi.

## Running in docker container
You can use this docker image to run grafana in docker.

### Install docker (if not already done)
Since there is no official docker build for raspberry pi available yet, you could use the [docker packages of hypriot](http://blog.hypriot.com/downloads/):
```bash
# download image (replace name by latest release)
wget https://downloads.hypriot.com/docker-hypriot_1.10.2-1_armhf.deb
# install docker (replace name by latest release)
sudo dpkg -i docker-hypriot_1.10.2-1_armhf.deb
# enable service
sudo service docker restart
# check if everything is working
sudo docker info
```

### Build docker image (optional)
If you want to build the image by yourself instead of downloading it from docker hub:
```bash
# clone github repository
git clone https://github.com/heziegl/rpi-grafana.git
# run build script
./build.sh
```


### Run docker container
```bash
# clone github repository
git clone https://github.com/heziegl/rpi-grafana.git
# run build script
./run.sh
```


## Running without docker
If you don't like docker you can use the prebuild packages in the dist-* directory of my [rpi-grafana-build](https://github.com/heziegl/rpi-grafana-build) repository to setup and run Graphana without docker.

