# Creador de Python git ignore:

Este repositorio cumple el objetivo de poder crear tus archivos ".gitignore" con el schema de python.

## Sigue los pasos a continuación:

# **PASO 1:**

Descarga el repositorio a en tu carpeta principal.

Para ello, puedes utilizar el comando **pwd**, para saber la ubicación en la que estás.

o bien, podrías utilizar el comando **cd** para ubicarte en tu carpeta principal,

posteriormente clonaras el repositorio con el siguiente comando:

```
git clone https://github.com/Cervantes21/pyignore.git
```

# **PASO 2:**
Luego de descargar el repositorio, abriremos un editor de texto, sea nano, vim, etc.
Para el ejemplo utilizare **"vim"**

## **PARA ZSH**

```
vim ~/.zshrc
```

Una vez en el editor copiaremos y pegaremos esta línea de código, en el archivo **/.zshrc**:

```
# Pyignore
# Agrega la carpeta de scripts al PATH
export PATH=$PATH:~/pyignore
```
Guardamos y salimos con la tecla **ESC** y luego **wq!**

y posteriormente podemos reinicar nuestra terminal, o bien usar el comando:

```
source ~/.zshrc
```

## **PARA BASH**

```
vim ~/.bashrc
```

Copiamos y pegamos en el archivo **/.bashrc**

```
# Pyignore
# Agrega la carpeta de scripts al PATH
export PATH=$PATH:~/pyignore
```

Guardamos y salimos con **wq!**

y posteriormente podemos reiniciar la terminar, o usar el comando:

```
source ~/.bashrc
```

Ahora podemos posicionarnos en cualquier carpeta y llamar a nuestra función en la terminal con el comando
**py-ignore** y nos creará el tample de Python.

# **EN CASO DE QUE NO LLEGARA A FUNCIONAR:** 

## Paso 1:

Abre el archivo **~/.zshrc**, o **~/.bashrc** en un editor de texto, en este ejemplo usaré **vim**

Ejemplo en **zsh**
```
vim ~/.zshrc
```

Ya en el archivo, copiamos y pegamos:

```
# Pyignore
# Agrega la carpeta de scripts al PATH
export PATH=$PATH:~/pyignore

# Define una función para ejecutar py-ignore
py-ignore () {
  local url="https://raw.githubusercontent.com/github/gitignore/main/Python.gitignore"
  local filename=".gitignore"
  local directory=$(pwd)

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
}

```

Esto ejecuta directamente el script en la terminal.

Después tenemos que reiniciar, o abrir una nueva terminal, o usar el comando:

```
source ~/.zshrc
```

y ahora sí, sin ningún problema podremos usar nuestro comando

```
py-ignore
```


