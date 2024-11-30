#!/bin/bash

release_file=/etc/os-release

if grep -q "Arch" $release_file
then
	# command to update system on arch bases ones
	sudo pacman -Syu
fi

if  grep -q "Debian" $release_file || grep -q "Pop" $release_file 
then
	# command to update system on debian based os's
	sudo apt update
	sudo apt dist-upgrade
	sudo apt autoremove
fi
