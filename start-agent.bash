#!/bin/bash

echo ${HOSTNAME} > .hostname

MB_TPL_FILE=configs/metricbeat-template.yml
MB_CFG_FILE=configs/metricbeat.yml

HB_TPL_FILE=configs/heartbeat-template.yml
HB_CFG_FILE=configs/heartbeat.yml

sudo cp ${MB_TPL_FILE} ${MB_CFG_FILE}
sudo chown root:root ${MB_CFG_FILE}
sudo chmod 600 ${MB_CFG_FILE}

sudo cp ${HB_TPL_FILE} ${HB_CFG_FILE}
sudo chown root:root ${HB_CFG_FILE}
sudo chmod 444 ${HB_CFG_FILE}

sudo docker-compose down
sudo docker-compose up -d
