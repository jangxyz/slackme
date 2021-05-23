#!/bin/bash

#
# Request by curl
#
#   Usage: TOKEN="xoxb-..." CHANNEL="C...." $0 slackme.sh 'some message here'
#
#   requires env var for $TOKEN and $CHANNEL
#

# exit when any command fails

set -e

if [[ -z "$TOKEN" ]]; then
  echo "you must provide a TOKEN variable"
  exit 1
fi

if [ $# -lt 2 ]; then
  echo "Usage: $0 CHANNEL TEXT"
  exit 0
fi

#CHANNEL="CJZH224KE"
CHANNEL=$1
TEXT=$2

#TOKEN= CHANNEL= curl -X POST --url 'https://slack.com/api/chat.postMessage' -H "Authorization: Bearer $TOKEN"

data='{"channel":"'${CHANNEL}'","text":"'${TEXT}'","attachments": [{"text":"Who wins the lifetime supply of chocolate?","fallback":"You could be telling the computer exactly what it can do with a lifetime supply of chocolate.","color":"#3AA3E3","attachment_type":"default","callback_id":"select_simple_1234","actions":[{"name":"winners_list","text":"Who should win?","type":"select","data_source":"users"}]}]}'

echo $data

# from https://api.slack.com/web#slack-web-api__basics__post-bodies__json-encoded-bodies
curl --verbose -X POST --url https://slack.com/api/chat.postMessage \
-H "Authorization: Bearer ${TOKEN}" \
-H 'Content-type: application/json; charset=utf-8' \
--data "$data"


