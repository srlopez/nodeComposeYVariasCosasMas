# Testing docker

Las dos sentencias siguientes realizan lo mismo
```
docker run -it -v %CD%:/app -w /app node node webserver.js
docker run -it -v %CD%:/app node node /app/webserver.js   
```

La construcción y ejecución de la imagen de la api puede ser así:
```
docker build -f Dockerfile.api -t srlopez/nodeapi:1.0 .
docker run srlopez/nodeapi:1.0
```

Línea de comandos `docker run`
variables de entorno:  -e WORLD=antonio
puerto:                -p 80:6000
volumenes/directorio:  -v %CD%:/app -v %CD%/webserver.js:/app/webserver.js


Una image más seria
En Dockerfile tengo los comandos que preparan la imagen

docker build -t hello .
docker build --progress=plain --no-cache -t hello .  #para ver la ejecucion
docker run --rm hello