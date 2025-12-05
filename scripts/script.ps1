
$ErrorActionPreference = "Stop"

Write-Output "Script PowerShell iniciado"

# Variables de entorno
Write-Output "La variable CUSTOM_VAR es: $env:CUSTOM_VAR"

# Crear archivo
"Este es un archivo generado por script.ps1" | Out-File -FilePath output.txt -Encoding utf8

# Cambiar permisos con icacls para dar permisos de lectura a todos
icacls output.txt /grant Everyone:(R)
Write-Output "Permisos cambiados en output.txt"

# Crear proceso en background: Start-Sleep simula una tarea
Start-Job -ScriptBlock { Start-Sleep -Seconds 10 } | Out-Null
Write-Output "Proceso en segundo plano creado"

Write-Output "Script PowerShell finalizado con éxito"
