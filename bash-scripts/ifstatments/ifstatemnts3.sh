#!/bin/bash

command=bpytop

if command -v  $command
then
	echo "$command is installed, running it..."
else
	echo "$command is not installed, installing it..."
	sudo apt update && sudo apt install $command
fi

$command

