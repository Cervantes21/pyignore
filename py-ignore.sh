#!/bin/bash

url="https://raw.githubusercontent.com/github/gitignore/main/Python.gitignore"
filename=".gitignore"
directory=$(pwd)

# Verifica si ya existe un archivo .gitignore en el directorio actual
if [ -e "$directory/$filename" ]; then
  echo "¡Atención! El archivo .$filename ya existe en $directory."
  echo "¿Deseas sobrescribir el archivo existente? [y/n]"
  read confirmation
  if [ "$confirmation" = "y" ]; then
    curl -sS "$url" -o "$directory/$filename"
    echo "Se ha descargado el archivo .$filename en $directory."
  else
    echo "No se ha sobrescrito el archivo existente."
  fi
else
  curl -sS "$url" -o "$directory/$filename"
  echo "Se ha descargado el archivo .$filename en $directory."
fi

