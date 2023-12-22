#!/bin/bash

cat << EOF >> .env
HOMEDIR=${HOME}
EOF

CFG_FILE=configs/metricbeat.yml

sudo chown root:root ${CFG_FILE}
sudo chmod 600 ${CFG_FILE}

sudo docker-compose down
sudo docker-compose up -d
