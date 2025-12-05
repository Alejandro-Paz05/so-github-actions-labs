#!/bin/bash
set -e

echo "Script bash iniciado"

# Variable de entorno de ejemplo
echo "Variable CUSTOM_VAR: $CUSTOM_VAR"

# Crear archivo
echo "Archivo creado desde script.sh" > output.txt

# Cambiar permisos
chmod 644 output.txt
echo "Permisos de output.txt modificados a 644"

# Proceso en background
sleep 10 &
echo "Proceso en background creado con PID $!"

echo "Script bash finalizado"
