 #!/bin/sh

set -e

LOCKFILE=/tmp/curl.lock

if [ -f "$LOCKFILE" ]; then
  echo "Script is already running. Exiting."
  exit 1
fi

echo "Creating lockfile $LOCKFILE"
touch $LOCKFILE

echo "$(date) - Start"

echo "Running cron $CURL_COMMAND"

curl $CURL_COMMAND

echo "$(date) End"

echo "Removing lockfile $LOCKFILE"
rm $LOCKFILE
