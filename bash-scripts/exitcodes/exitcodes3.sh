#!/bin/bash

directory=/notexist

if [ -d $directory ]
then
	echo $?
	echo "directory $directory exists"
else
	echo $?
	echo "directory $directory does not exists"
fi

echo "the exit code for this script is $?"

