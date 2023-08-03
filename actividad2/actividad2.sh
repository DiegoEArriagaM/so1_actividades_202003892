#!/usr/bin/env bash

#Comprobar si existe el programa que sirve para obtener un JSON (jq)
jq --version
if test $? -eq 1; then sudo apt-get update sudo apt-get install jq; fi

#Se pide ingresar el usuario
echo "Ingrese usuario de Github: "
read GITHUB_USER

#Se reicbe el json de github
json=`curl https://api.github.com/users/$GITHUB_USER -H "Accept: application/json" -s`
#Se crea el mensaje a imprimir
mensaje=`echo "Hola $GITHUB_USER. User ID: $(echo $json| jq -r '.id'). Cuenta fue creada el: $(echo $json | jq -r '.created_at')"`
fecha=`date +"%F"`
mkdir -p /tmp/$fecha
echo $mensaje
#Se guarda en el archivo
echo $mensaje >> /tmp/$fecha/saludos.log
