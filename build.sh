#!/bin/sh

# Debes tener el java del proyecto instalado en la maquina donde se ejecuta este script (JAVA 11)
./gradlew build
docker build -t extreme_startup_server .