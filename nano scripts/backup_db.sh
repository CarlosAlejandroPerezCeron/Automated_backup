#!/bin/bash
DB_USER="usuario"
DB_PASS="contraseña"
DB_NAME="nombre_bd"
BACKUP_DEST="/ruta/de/tu/respaldo_bd"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
LOG_FILE="../logs/backup_db_$TIMESTAMP.log"

mkdir -p $BACKUP_DEST

echo "Iniciando backup de la base de datos a las $(date)" | tee $LOG_FILE
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > $BACKUP_DEST/db_backup_$TIMESTAMP.sql
echo "Backup de base de datos completado a las $(date)" | tee -a $LOG_FILE
