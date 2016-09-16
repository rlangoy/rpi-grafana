#! /bin/bash
sudo mkdir etc_grafana
sudo mkdir grafana_data
cd etc_grafana
sudo wget https://raw.githubusercontent.com/heziegl/rpi-grafana/master/etc_grafana/grafana.ini
cd ..
sudo wget https://raw.githubusercontent.com/heziegl/rpi-grafana/master/run.sh
sudo bash chmod a+x run.sh
sudo bash ./run.sh
