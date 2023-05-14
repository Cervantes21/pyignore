#!/bin/bash

# Define la ruta en donde se creará el archivo .gitignore
target_path=$(pwd)

# Verifica si el archivo .gitignore ya existe en la ruta, si es así pregunta al usuario si desea sobrescribirlo
if [ -f "$target_path/.gitignore" ]; then
    read -p "El archivo .gitignore ya existe en esta carpeta, ¿deseas sobrescribirlo? (s/n) " confirm
    if [ "$confirm" != "s" ]; then
        echo "Saliendo sin hacer cambios."
        exit 1
    fi
fi

# Descarga el contenido del archivo .gitignore de Python desde el repositorio de GitHub
curl -o "$target_path/.gitignore" https://raw.githubusercontent.com/github/gitignore/main/Python.gitignore

echo "El archivo .gitignore ha sido creado exitosamente en la ruta $target_path."

