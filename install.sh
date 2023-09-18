#!/usr/bin/env bash
cd $(dirname $0)

cFolder="$(pwd)"
#设定定时任务
echo "0 9 * * * $cFolder/wallpaper.sh  > /dev/null 2>&1" | crontab
