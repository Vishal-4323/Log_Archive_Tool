#!/bin/bash

DATE=$(date +"%Y%m%d_%H%M%S")

# read -p "Enter the log directory need to archive: " log_directory

tar -cvzf archive_log_$DATE.tar.gz $1/*.log
