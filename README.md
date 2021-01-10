## Cluster de swarm
------------------------

# instalar docker-compose en leader
sudo apt install docker-compose

# comprobar el docker compose:
$ sudo docker-compose up

# ports in docker swarm

# documentación
https://docs.docker.com/engine/swarm/swarm-tutorial/

activar estos puertos en secutiry groups
---------------------------------------------
TCP port 2377 for cluster management communications
TCP and UDP port 7946 for communication among nodes
UDP port 4789 for overlay network traffic


## 1. crear los host
-----------------------------------
-leader
Step 3:
Number of instances: 1
Advanced details: ingresamos el script SH enlazado con el TOKEN recibido en la primera 

# dentro de consola aws, inicializar manager/leader:
$ docker swarm init

este comando genera un token, que se añade al script de los workers, por ejemplo:
$ sudo docker swarm join --token SWMTKN-1-2a141a9z5yhamkt0xu72nhhoaelic050rcw60kpvv9f5dxyiiy-7wv90flx88d8qjar1smuae6z0 172.31.33.185:2377

-workers:
Step 3:
Number of instances: 5
Advanced details: ingresamos el script SH enlazado con el TOKEN recibido en la primera instancia
    ($ sudo docker swarm join .....)

## comandos
comprobar los nodos conectados tras añadir el token, desde leader
$ docker node ls

$ sudo docker stack deploy -c docker-compose.yml web

comprobar conexion
------------------------------
$ curl http://localhost:80

comprobar service
$ docker service ls

url: 3.138.226.229

## opción 2.1. -service: posibilidad de crear un service
------------------------------------------------
$ sudo docker service create --name nginx_swarm --replicas=5 nginx

## opción 2.2. docker stack deploy a través de un docker-compose
-------------------------------------------------------
crear fichero docker-compose
$ sudo docker stack deploy -c docker-compose.yml web

-esto crea network web_default (por defecto)
-service web_proxy
-service web_web
...

# escalar
comprobar servicios (replicas)
$ sudo docker service ls

$ docker service scale web_proxy=2
$ docker service scale web_web=2

$ sudo docker service ls


## otros comandos
eliminar contenedores
-----------------------------------
$ docker rm $(docker ps -a -q) -f

eliminar imagenes
-----------------------------------
$ docker rmi $(docker images -q) 

$ docker volume prune
