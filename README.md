# rpi-grafana
Dockerfile for running [Grafana](http://grafana.org) on raspberry pi.

## Running in docker container
You can use this docker image to run grafana in docker.

### Install docker (if not already done)
The official docker install for raspberry pi (https://www.raspberrypi.org/blog/docker-comes-to-raspberry-pi/):
```bash
#install docker the easy way
curl -sSL https://get.docker.com | sh
# If you would like to use Docker as a non-root user (requeres logout/login)
sudo usermod -aG docker pi
# check if everything is working
sudo docker info
```
### Installing and running the grafana docker image (the easy way)
```bash
curl -sSL https://raw.githubusercontent.com/rlangoy/rpi-grafana/master/easyinstall.sh |sh
```
grafana coudl be acessed in your web-broweser using the url: http:\\\\localhost:3000 <br>
(remember defaut user is admin and default pass word is admin)<br>



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

