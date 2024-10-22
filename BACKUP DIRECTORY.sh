#Shell script that you can use to backup a directory using the tar command:
#!/bin/bash
# Source directory to backup
source_dir="/path/to/source/directory"
# Backup destination directory
backup_dir="/path/to/backup/directory"
# Backup filename with date
backup_filename="backup_$(date +%Y%m%d%H%M%S).tar.gz"
# Create the backup directory if it doesn't exist
mkdir -p "$backup_dir"
# Create the backup using tar
tar -czvf "$backup_dir/$backup_filename" "$source_dir"
# Check if the backup was successful
if [ $? -eq 0 ]; then
 echo "Backup successful: $backup_filename created in $backup_dir"
else
 echo "Backup failed"
fi
