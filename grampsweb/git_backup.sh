#!/bin/bash
# Move to the directory
cd /home/rhart1716/grampsweb || exit

# Use full paths for safety
/usr/bin/git checkout pi-config
/usr/bin/git add .
/usr/bin/git commit -m "Automated Backup $(/usr/bin/date +'%Y-%m-%d')"
/usr/bin/git push origin pi-config >> /home/rhart1716/grampsweb/backup.log 2>&1
