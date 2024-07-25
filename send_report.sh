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
zip -r "$ZIP_FILE" "$BACKUP_DIR/$DATE" "$LOG_DIR/update-$DATE.txt"

# Check if the zip command was successful
if [ $? -eq 0 ]; then
    echo "Files zipped successfully: $ZIP_FILE"
else
    echo "Failed to zip files"
    exit 1
fi

# Send the email with the zip file attached to multiple recipients
echo "$BODY" | mutt -a "$ZIP_FILE" -s "$SUBJECT" -- $EMAILS

# Check if the email was sent successfully
if [ $? -eq 0 ]; then
    echo "Email sent successfully to $EMAILS"
else
    echo "Failed to send email"
    exit 1
fi


