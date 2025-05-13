#!/bin/bash

DATE=$(date +"%Y%m%d_%H%M%S")

# read -p "Enter the log directory need to archive: " log_directory

LOG_ARCHIVE_FILE_NAME=archive_log_$DATE.tar.gz

tar -cvzf $LOG_ARCHIVE_FILE_NAME $1/*.log

# This command copy the archive file from local to s3 bucket
aws s3 cp $LOG_ARCHIVE_FILE_NAME s3://log-archive-200/$LOG_ARCHIVE_FILE_NAME

# After copied the folder in s3 bucket this will remove the archive file in local
rm $LOG_ARCHIVE_FILE_NAME
