#!/bin/bash

echo "Contenedor iniciado - fecha y hora:"
date

echo "Uso de CPU y memoria del proceso dentro del contenedor:"
top -b -n 1 -p $$

echo "Comunicación con el host: env variable HOSTNAME dentro del contenedor es $HOSTNAME"

echo "Finalizando contenedor..."
