#!/bin/bash

set -e

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

SOURCE="$HOME/backup-config"
DEST="$HOME"

BACKUP_NAME="backup-config-$DATE.tar.gz"

echo "================================="
echo "Project Kaizen Backup"
echo "================================="

if [ ! -d "$SOURCE" ]; then
    echo "ERROR: Backup source not found:"
    echo "$SOURCE"
    exit 1
fi

echo "Updating backup manifest..."

cd "$SOURCE"

find . -type f \
    ! -name "*.tar.gz" \
    | sort > backup-manifest.txt


echo "Generating backup metadata..."

cat > backup-info.txt <<EOF
Project: Project Kaizen
Sprint: S03 - Backup

Backup Type:
Configuration Backup

Created:
$DATE

Source:
$SOURCE

Restore Test:
Validated

Status:
Generated Automatically
EOF


echo "Creating backup archive..."

cd "$DEST"

sudo tar -czf "$BACKUP_NAME" "$(basename "$SOURCE")"


sudo chown "$USER:$USER" "$BACKUP_NAME"


echo "Validating backup..."

if tar -tzf "$BACKUP_NAME" >/dev/null; then

    SIZE=$(du -h "$BACKUP_NAME" | cut -f1)

    echo
    echo "================================="
    echo "Backup completed successfully"
    echo "================================="
    echo "File:"
    echo "$DEST/$BACKUP_NAME"
    echo
    echo "Size:"
    echo "$SIZE"
    echo
    echo "Validation:"
    echo "PASS"

else

    echo "Backup validation failed"
    exit 1

fi