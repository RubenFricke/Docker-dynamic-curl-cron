#!/bin/sh

set -e

if [[ "$CRON_SCHEDULE" == "now" ]]; then
    exec /curl.sh
else
    echo "$CRON_SCHEDULE /curl.sh" | crontab -u root -
    crond -l 2 -f
fi
