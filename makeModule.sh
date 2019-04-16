#!/bin/bash
if [  ! -n "$1"  ]
then echo "Input your module name at first!"
else
	mkdir $1
	cd $1
	if [ $1 == "Application" ]
		then
			moduleName="main"
			touch $moduleName"Controllers.js"
			touch $moduleName"Services.js"
			# touch $moduleName".js"
			# touch "directives.js"
			#get code from git server
		else
			moduleName="$(echo $1 | tr '[:upper:]' '[:lower:]')"
			touch $moduleName"Ctrl.js"
			touch $moduleName"Service.js"
	fi
	touch $moduleName".scss"
	touch $moduleName".html"
	mkdir "deviceStyle"
	mkdir "deviceStyle/ios"
	mkdir "deviceStyle/android"

	touch "deviceStyle/ios/style.scss"
	touch "deviceStyle/android/style.scss"

	iosDevice=($(awk '{print $1}' ../iosDeviceList.config))
	for data in ${iosDevice[@]}
	do
		if [ ${data} != "" ]; then
			touch "deviceStyle/ios/"${data}".scss"
		fi
	done
	androidDevice=($(awk '{print $1}' ../androidDeviceList.config))
	for data in ${androidDevice[@]}
	do
		if [ ${data} != "" ]; then
			touch "deviceStyle/android/"${data}".scss"
		fi
	done
	cd ..
fi
