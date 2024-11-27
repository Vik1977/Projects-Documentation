#!/bin/bash

package=notexist

sudo apt install $package >> package_install_results.log

if [ $? -eq 0 ]
then
	echo 'the package is installed'
	echo "$package is available here:"
	which $package
else
	echo "$package failed to install" >> package_install_failure.log
fi

