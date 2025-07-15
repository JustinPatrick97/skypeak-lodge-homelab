#!/bin/bash

# === SkyPeak Lodge Homelab Backup Script ===


# Backup destination
BACKUP_DIR="/backups/skypeak"
LOGFILE="$BACKUP_DIR/backup-$(date +%F).log"

# Create backup directory if it doesn't exist
mkdir -p "@BACKUP_DIR"

# Log start time
echo "=== Backup started at $(date) ===" >> "$LOGFILE"

# Run backup command
tar -czvf "$BACKUP_DIR/skypeak-backup-$(date +%F).tar.gz" \
  /srv/shared/ \
  /etc/samba/smb.conf \
  /home/patrick/Documents/skypeak-lodge-homelab/ \
  >> "$LOGFILE" 2>&1

# Log completion
echo "=== Backup compelte at $(date) ===" >> "$LOGFILE"
