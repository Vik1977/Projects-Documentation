#!/bin/bash

package=notexist

sudo apt install $package

if [ $? -eq 0 ]
then
	echo 'the package is installes'
	echo "$package is available here:"
	which $package
else
	"$package failed to install"
fi

