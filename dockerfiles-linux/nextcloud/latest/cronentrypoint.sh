#!/bin/sh

cron start

exec /entrypoint.sh $@
