#!/bin/bash

set -e

echo "Script Bash iniciado"

echo "La variable CUSTOM_VAR es: $CUSTOM_VAR"

echo "Este es un archivo generado por el script.sh" > output.txt

chmod 644 output.txt
echo "Permisos de output.txt cambiados a 644"

sleep 10 &
echo "Proceso en segundo plano creado con PID $!"

# Simular error para probar manejo (descomenta para probar)
/# false

echo "Script Bash finalizado con éxito"
