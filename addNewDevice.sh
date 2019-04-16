#!/bin/bash
if [  ! -n "$1"  ]
	then echo "No Device Name"
else
	deviceName=$1
	if [  ! -n "$2"  ]
		then platformName="android"
	else platformName=$2
	fi
	echo ${deviceName}>>${platformName}"DeviceList.config"
	for module in app/*
	do
		if [ ${module} != "" ]; then
			newDeviceStyleFile=${module}"/deviceStyle/"${platformName}"/"${deviceName}".scss"
			if [ ! -f ${newDeviceStyleFile} ]; then 
				touch ${newDeviceStyleFile}
			fi 
		fi
	done
fi




