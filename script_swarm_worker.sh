#!/bin/sh
#script para instalar docker swarm/nodes en EC2

sudo apt-get update 
sudo apt-get upgrade
sudo apt install curl

#install docker
sudo curl -sSL https://get.docker.com/ | sh

sudo systemctl start docker.service
sudo usermod ubuntu -aG docker 

sudo docker swarm join --token SWMTKN-1-659kgz72ra3c2z76jz00n4t2h8rf8msdlvrzb3nc3g32zpryun-1jet8js3nxqybrmuafs5lor12 172.31.39.249:2377

#otro/s node/s. Instruccion tras ejecutar => "docker swarm init"
# docker swarm join \    
#    --advertise-addr $(curl http://169.254.169.254/latest/meta-data/public-ipv4) \
#    --token SWMTKN-1-2a141a9z5yhamkt0xu72nhhoaelic050rcw60kpvv9f5dxyiiy-7wv90flx88d8qjar1smuae6z0 172.31.33.185:2377

