creamos un ejemplo para que se pueda subir a un cluster de swarm
--------------------------------------------------------------------
$ docker-compose up
url: localhost

1. crear los host
-----------------------------------
-master
Step 3:
Number of instances: 1
Advanced details: ingresamos el script SH enlazado con el TOKEN recibido en la primera 

dentro de consola:
$ docker swarm init

este comando genera un token, que se añade al script de los workers
$ sudo docker swarm join --token SWMTKN-1-2a141a9z5yhamkt0xu72nhhoaelic050rcw60kpvv9f5dxyiiy-7wv90flx88d8qjar1smuae6z0 172.31.33.185:2377

-workers:
Step 3:
Number of instances: 5
Advanced details: ingresamos el script SH enlazado con el TOKEN recibido en la primera instancia
    ($ sudo docker swarm join .....)

2. -service:
-----------------------------------
$ sudo docker service create --name nginx_swarm --replicas=5 nginx

3. docker stack deploy
-----------------------------------
crear fichero docker-compose
$ sudo docker stack deploy -c docker-compose.yml drupal

-esto crea netwrok (por defecto)
-service drupal-drupal
-service drupal-postgres





eliminar contenedores
-----------------------------------
docker rm $(docker ps -a -q) -f

eliminar imagenes
-----------------------------------
docker rmi $(docker images -q) 