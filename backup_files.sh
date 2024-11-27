nano scripts/backup_files.sh


#!/bin/bash
# Script para realizar copias de seguridad de archivos

BACKUP_SRC="/ruta/de/tu/carpeta"
BACKUP_DEST="/ruta/de/tu/respaldo"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
LOG_FILE="../logs/backup_$TIMESTAMP.log"

mkdir -p $BACKUP_DEST

echo "Iniciando backup a las $(date)" | tee $LOG_FILE
rsync -avh --delete $BACKUP_SRC $BACKUP_DEST | tee -a $LOG_FILE
echo "Backup completado a las $(date)" | tee -a $LOG_FILE
