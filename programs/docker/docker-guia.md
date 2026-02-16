# Docker - Comandos basicos y utiles

## Informacion general

```sh
docker --version                  # Ver version de Docker
docker info                       # Informacion del daemon y configuracion
```

## Contenedores

```sh
docker ps                          # Lista contenedores corriendo
docker ps -a                       # Lista todos los contenedores
docker run -d --name mi_contenedor imagen  # Ejecutar un contenedor en segundo plano
docker stop CONTAINER_ID           # Detener un contenedor
docker start CONTAINER_ID          # Iniciar un contenedor detenido
docker restart CONTAINER_ID        # Reiniciar un contenedor
docker rm CONTAINER_ID             # Borrar un contenedor
docker logs CONTAINER_ID           # Ver logs de un contenedor
docker rm $(docker ps -a -q)       # Borrar todos los contenedores
docker stop $(sudo docker ps -aq)  # Detener todos los contenedores
docker rm $(sudo docker ps -aq)    # Borrar todos los contenedores
docker rm NAME                     # Borrar todos los contenedores con el nombre NAME
docker exec -it CONTAINER_ID bash  # Entrar a un contenedor interactivo
docker run -p 5000:80 -d imagen     # Ejecutar un contenedor con puertos expuestos y en segundo plano
docker run -p 3000:80 -p 5000:80 -d imagen   # Ejecutar un contenedor con varios puertos expuestos
```

### Forzar eliminacion de contenedores

```sh
sudo docker rm $(sudo docker ps -aq) -f
```

## Imagenes

```sh
docker images                      # Lista imagenes locales
docker pull NOMBRE_IMAGEN          # Descargar una imagen desde Docker Hub
docker build -t NOMBRE_IMAGEN .    # Construir imagen desde Dockerfile
docker rmi IMAGE_ID                # Borrar imagen
sudo docker rmi $(sudo docker images -aq)     # Borrar todas las imagenes
```

## Volumenes

```sh
docker volume ls                   # Listar volumenes
docker volume create NOMBRE        # Crear volumen
docker volume rm VOLUME_NAME       # Borrar volumen
```

## Redes

```sh
docker network ls                  # Listar redes
docker network create NOMBRE       # Crear red
docker network rm NOMBRE           # Borrar red
```

## Limpiar

```sh
docker container prune -f          # Borrar contenedores detenidos
docker image prune -f              # Borrar imagenes no usadas
docker volume prune -f             # Borrar volumenes no usados
docker system prune -a -f          # Borrar todo lo no usado (contenedores, imagenes, redes)
```

## Inspeccion y detalles

```sh
docker inspect CONTAINER_ID        # Informacion detallada de un contenedor
docker stats                       # Estadisticas en tiempo real de los contenedores
```

## Ejemplo rapido de MySQL con Docker

```sh
docker run -d --name mysql_test \
    -e MYSQL_ROOT_PASSWORD=root123 \
    -e MYSQL_DATABASE=testdb \
    -p 3306:3306 \
    -v ~/docker/mysql-data:/var/lib/mysql \
    mysql:latest
```

## Ejemplo de MySQL con Docker (puerto y nombre)

```sh
sudo docker run -d -p 3306:3306 --name mydatabase mysql
```

## MySQL con variables de entorno

```sh
sudo docker run -d -p 3306:3306 --name mydatabase -e MYSQL_ROOT_PASSWORD=123456 mysql
```

## Ver los contenedores con ID y nombre

```sh
sudo docker ps --format='ID\t{{.ID}}\nNombre:\t{{.Names}}'
```

## Levantar un sitio web con Docker y Nginx (solo lectura)

```sh
sudo docker run -d -p 80:80 --name website -v $(pwd):/usr/share/nginx/html:ro nginx
```

## Levantar un sitio web con Docker y Nginx (lectura y escritura)

```sh
sudo docker run -d -p 80:80 --name website -v $(pwd):/usr/share/nginx/html nginx
```

## Conectar a un contenedor de forma interactiva

```sh
sudo docker exec -it CONTAINER_ID bash
```

## Construir una imagen con Dockerfile

```sh
sudo docker build -t sopetest .
```

## Construir una imagen y subirla a Docker Hub (usuario: sopekof)

```sh
sudo docker build -t sopekof/website .
```

Primero se logea con `docker login`.

```sh
sudo docker push sopekof/website
```

## Subir una imagen a Docker Hub

```sh
sudo docker push sopekof/website
```

## Descargar una imagen de Docker Hub (cuenta propia)

```sh
sudo docker pull sopekof/website
```

## Instalar imagen de SQL Server

```sh
docker pull mcr.microsoft.com/mssql/server:2025-latest
```

## Ejecutar un contenedor con una imagen de Docker Hub

```sh
sudo docker run -d -p 3000:80 --name sitioweb sopekof/website
```

## MongoDB (contenedor con version especifica)

```sh
docker run -d -p 27017:27017 --name mydatabase mongo:4.4
```

## Crear un contenedor con SQL Server

```sh
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=micontrasena123456" -e "MSSQL_PID=Evaluation" -p 1433:1433 --name sqlserver --hostname sqlpreview -d mcr.microsoft.com/mssql/server:2025-latest
```
