#!/bin/bash

DATE=$(date +"%Y-%m-%d-%H-%M-%S")
BACKUP_DIR="/home/eko/AutomationTool/Backups/Destination"
LOG_DIR="/home/eko/AutomationTool/Logs"
ZIP_FILE="/home/eko/AutomationTool/Reports/Log_${DATE}.zip"
EMAILS="pking@wiley.com"
SUBJECT="Backup and Update Report - $DATE"
BODY="Please find attached the backup and update report for $DATE."

zip -r "$ZIP_FILE" "$LOG_DIR" "$BACKUP_DIR"

sendmail -v -t << EOF
To: $EMAILS
Subject: $SUBJECT
$BODY

Attachments: $ZIP_FILE
EOF
