#!/bin/bash

for file in logfile/*.log
do
	tar -czvf $file.tar.gz $file
done

