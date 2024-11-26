#!/bin/bash

program=fastfetch

sudo apt install $program -y >> testfile_install.log
if [ $? -eq 0 ]
then
	echo "program $program is installed"
else
	echo " program failed to install"
fi

# $program
