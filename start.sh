#!/bin/bash

echo "🏥 Iniciando Clínica Médica..."

# Activar entorno virtual
source venv/bin/activate

# Crear backup automático antes de iniciar (opcional)
if [ -f "instance/clinica.db" ]; then
    mkdir -p instance/backups
    cp instance/clinica.db "instance/backups/clinica_backup_$(date +%Y%m%d_%H%M%S).db"
    echo "✅ Backup automático creado"
fi

# Iniciar aplicación
echo "🚀 Iniciando servidor en http://localhost:5001"
python3 app.py