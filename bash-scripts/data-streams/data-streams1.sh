#!/bin/bash

release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log


if grep -q "Arch" $release_file
then
	# command to update system on arch bases ones
	sudo pacman -Syu 1>>$logfile 2>>$errorlog
	if [ $? -ne 0 ]
	then
	echo "an error occurred, check the $errorlog file "
	fi
fi

if  grep -q "Debian" $release_file || grep -q "Pop" $release_file 
then
	# command to update system on debian based os's
	sudo apt update 1>>$logfile 2>>$errorlog
	if [ $? -ne 0 ]
	then
		echo "an error occurred, check the $errorlog file "
	fi
	sudo apt dist-upgrade -y 1>>$logfile 2>>$errorlog
	if [ $? -ne 0 ]
	then
		echo "an error occurred, check the $errorlog file "
	fi
fi
