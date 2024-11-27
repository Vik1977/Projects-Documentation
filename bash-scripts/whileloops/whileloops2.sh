#!/bin/bash

myvar=1

while [ -f ~/testfile ]
do 
	echo  "the test file exists"
done

echo "the file no longer exists"

