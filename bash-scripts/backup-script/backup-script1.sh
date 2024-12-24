#!/bin/bash

# check if there are 2 arguments
if [ $# -ne 2 ]
then
	echo "usage: backup-script1.sh <soutce_directory> <target_directory>"
	echo "please try again"
	exit 1
fi

# check if rsync is installed
if ! command -v rsync > /dev/null 2>&1
then
	echo "this script requires rsync to be installed"
	echo "Please use your package menager to install it  and try again"
	exit 2
fi

# capture the current date, and store it in the format YYYY-MM-DD
current_date=$(date +%Y-%m-%d)

rsync_options="-avb --backup-dir $2/$current_date --delete"

$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log

