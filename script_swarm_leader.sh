#!/bin/sh
#script para instalar docker swarm/nodes en EC2

sudo apt-get update
sudo apt-get upgrade
sudo apt install curl

curl -sSL https://get.docker.com/ | sh

sudo systemctl start docker.service

usermod ubuntu -aG docker 

#en los ss workers/nodes. Instruccion tras ejecutar => "docker swarm init"
#$ docker swarm join --token SWMTKN-1-2a141a9z5yhamkt0xu72nhhoaelic050rcw60kpvv9f5dxyiiy-7wv90flx88d8qjar1smuae6z0 172.31.33.185:2377
