#! /bin/bash

x=1
clear

while [ $x -eq 1 ]
do
	echo "#################################"
	echo "#            CPU TEMP           #"
	echo "#################################"
	echo "#            $(sensors | grep "Package id 0:" | tr -d '+' | awk '{print $4}')             #"
	echo "#################################"
	sleep 3
	clear
done