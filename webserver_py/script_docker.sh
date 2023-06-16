#!/bin/bash

#Installing Docker

sudo apt update&&sudo apt upgrade -y
curl -fsSL https://get.docker.com/ -o install_docker.sh
sh install-docker.sh --dry-run
sudo sh install-docker.sh


#Creating container

sudo docker build -t img_app_py .
sudo docker run --name cont_appy_py_lylla -p 1234:1234 -d img_app_py
sudo docker tag img_app_py:latest lyllabani/img_app_py:latest
sudo docker login -u lyllabani -p dckr_pat_BPdule2UQ-Mif_zdZGq6E5R24EA
sudo docker push lyllabani/img_app_py:latest
