#!/bin/bash

# Variables
DATE=$(date +"%Y-%m-%d-%H-%M-%S")
BACKUP_DIR="/home/eko/AutomationTool/Backups/Destination"
LOG_DIR="/home/eko/AutomationTool/Logs"
ZIP_FILE="/home/eko/AutomationTool/Reports/report-$DATE.zip"
EMAILS="email1@example.com,email2@example.com"
SUBJECT="Backup and Update Report - $DATE"
BODY="Please find attached the backup and update report for $DATE."

# Create the zip file with backup and log files
zip -r "$ZIP_FILE" "$LOG_DIR" "$BACKUP_DIR"

# Create and send the email
sendmail -v -t <<EOF
To: $EMAILS
Subject: $SUBJECT
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="boundary"

--boundary
Content-Type: text/plain

$BODY

--boundary
Content-Type: application/zip; name="$(basename $ZIP_FILE)"
Content-Disposition: attachment; filename="$(basename $ZIP_FILE)"
Content-Transfer-Encoding: base64

$(base64 "$ZIP_FILE")

--boundary--
EOF


