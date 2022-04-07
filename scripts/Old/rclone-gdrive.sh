#!/bin/bash

rclone sync /home/pi/ gdrive:/homepi/current --verbose --exclude=".vscode-server/**" --backup-dir gdrive:/homepi/`date -I`
