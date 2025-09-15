#!/bin/sh

# Load configuration
. /etc/default/telegram-env

MESSAGE="${1}"

# Use default message if no argument provided
if [ -z "$MESSAGE" ]; then
    MESSAGE="$DEFAULT_MESSAGE"
fi

curl -s -X POST https://api.telegram.org/bot${TELEGRAM_TOKEN}/sendMessage -d chat_id=${TELEGRAM_CHAT_ID} -d text="${MESSAGE}" > /dev/null
