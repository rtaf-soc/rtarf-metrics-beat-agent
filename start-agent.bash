#!/bin/bash

cat << EOF >> .env
HOMEDIR=${HOME}
EOF

TPL_FILE=configs/metricbeat-template.yml
CFG_FILE=configs/metricbeat.yml

cp ${TPL_FILE} ${CFG_FILE}
sudo chown root:root ${CFG_FILE}
sudo chmod 600 ${CFG_FILE}

sudo docker-compose down
sudo docker-compose up -d
