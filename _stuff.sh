
# https://api.slack.com/methods/conversations.list
curl --url 'https://slack.com/api/conversations.list' \
  --data token="$TOKEN" \
  --data types='public_channel,im,mpim'


# https://api.slack.com/methods/users.list
curl --url 'https://slack.com/api/users.list' \
  --data token="$TOKEN" \
  --data types='public_channel,im,mpim'

# https://api.slack.com/methods/users.conversations
curl --url 'https://slack.com/api/users.conversations' \
  --data token="$TOKEN" \
  --data types='public_channel,im,mpim'

# https://slack.com/api/conversations.info
curl --url 'https://slack.com/api/conversations.info' \
  --data token="$TOKEN" \
  --data channel="$channel"

# https://slack.com/api/conversations.replies
curl --url 'https://slack.com/api/conversations.replies' \
  --data token="$TOKEN" \
  --data channel="$channel" \
  --data ts="$ts"

# https://api.slack.com/methods/conversations.history
curl --url 'https://slack.com/api/conversations.replies' \
  --data token="$TOKEN" \
  --data channel="$channel"



## from https://github.com/ErikKalkoken/slackApiDoc/blob/master/users.prefs.set.md
## https://slack.com/api/users.prefs.set
#curl --url 'https://slack.com/api/users.prefs.set' \
#  --data token="$TOKEN" 



#| jq '.channels[] | {id, name, is_general, is_channel, is_group, is_im, is_mpim, is_private}'

