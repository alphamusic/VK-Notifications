#!/bin/sh

FINAL_MESSAGE=""

if [[ -z "$VK_TOKEN" ]]; then
    echo "VK_TOKEN is required to run this action"
    exit 126
fi

if [[ -z "$VK_USERS" ]]; then
    echo "VK_USERS is required to run this action"
    exit 126
fi

if [[ -z "$VK_MESSAGE" ]]; then
    FINAL_MESSAGE=$'GitHub Notification 🔔\n📚 Repository:'+"$GITHUB_REPOSITORY"+$'\n🌳 Branch: ' + "$GITHUB_REF" + $'\n📃 Event: ' + "$GITHUB_EVENT_NAME"
else
    FINAL_MESSAGE="$VK_MESSAGE"
fi

FINAL_URL="access_token=$VK_TOKEN&v=5.87&user_ids=$VK_USERS&message=$VK_MESSAGE"

curl -d "$FINAL_URL" https://api.vk.com/method/messages.send