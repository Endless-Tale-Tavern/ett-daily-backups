#!/bin/bash

cd /home/pine/ett/ett-daily-backups
mkdir -p $(date +%Y)
cd $(date +%Y)
mkdir -p $(date +%Y-%m)
cd $(date +%Y-%m)
cp ../../../ett-py/ett.db "ett-$(date +%Y-%m-%d).py"

cd ../..
git add .
git commit -m "AUTO_DAILY_BACKUP - $(date +%Y-%m-%d)"
git push
