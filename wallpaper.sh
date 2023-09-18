#!/usr/bin/env bash
# 切换到脚本所在目录
cd $(dirname $0)

cFolder="$(pwd)"
java -jar $cFolder/wallpaper.jar > /dev/null

#提示壁纸设置成功
if [[ $1 = "-n" ]]
then
    osascript -e "display notification \"壁纸更换成功\" with title \"定时换壁纸\""
fi
