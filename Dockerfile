#Esto es un comentario
#Esta sera una imagen por etapas que contendra tanto el frontend como el backend

#Para compilar la imagen usar el comando (NO OLVIDAR EL PUNTO)
#
#   >docker build -t nodehello .
#
#Donde 'nodehello' puede ser cualquier nombre

#Para ejecutar usar el comando
#
#   >docker run -it --publish 7000:4000 nodehello
#
#Donde 'nodehello' es el nombre asignado cuando se compilo la imagen
#Donde '7000:4000' es el puerto de la aplicacion, esto quiere decir que el puerto 4000 interno (revisar primero EL PUERTO)
#del contenedor sera accesible atraves del puerto 7000 externamente (ESTO ES OPCIONAL se pueden usar los puertos de la aplicacion '4000:4000')

##################################################BACKEND###################################################

#Indicamos que se necesita una version de Node.js especifica
#Para mas informacion: https://hub.docker.com/_/node
FROM node:14

#Indicamos la ubicacion del proyecto DENTRO del contenedor (no dentro de la maquina)
WORKDIR /app

#Ejecutamos el servidor
CMD ["npm", "run", "start"]