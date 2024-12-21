#!/bin/bash

lines=$(ls -lh $1 |  wc -l)

if [ $# -ne 1 ]
then 
	echo "this script reqioers one valid directory"
	exit 1 
fi

echo "you have $(($lines-1)) objects in the $1 directory"
