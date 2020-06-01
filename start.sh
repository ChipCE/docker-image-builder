#!/bin/bash

docker run -p 8000:8000 --mount type=bind,source=/home/chip/Code/ckd-alert/Docker/alertServer,target=/alertServer --name alert-server-cont -d alert-server