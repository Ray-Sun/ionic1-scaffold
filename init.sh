#!/bin/bash
if [  ! -n "$1"  ]
	then projectName="myProject"
	else projectName=$1
fi
ionic start $projectName tabs
cd $projectName
rm www/templates/*
rm www/css/*
rm www/img/*
rm www/js/*
rm gulpfile.js
#get code from git server
if [  ! -n "$2"  ]
	then	mkdir app
			mkdir app/img
	else	git init
			git remote add origin $2
			git fetch
			git checkout -t origin/master
fi

cp ../makeModule.sh app/
cp ../contactCss.sh .
cp ../contactJs.sh .
cp ../moveMainJs.sh .
cp ../moveHtml.sh .
cp ../moveImage.sh .
cp ../updateAllFiles.sh .
cp ../addNewDevice.sh .
cp ../ionicBuild.sh .
chmod a+x app/makeModule.sh
chmod a+x *.sh

npm install


# No git project
if [  ! -n "$2"  ]
	then	cp ../gulpfile.js .
			cd app
			./makeModule.sh Application
			cd ..
			cp ../iosDeviceList.config app/
			cp ../androidDeviceList.config app/
fi

mkdir "www/css/ios"
mkdir "www/css/android"
iosDevice=($(awk '{print $1}' app/iosDeviceList.config))
for data in ${iosDevice[@]}
do
	if [ ${data} != "" ]; then
		touch "www/css/ios/"${data}".css"
	fi
done
androidDevice=($(awk '{print $1}' app/androidDeviceList.config))
for data in ${androidDevice[@]}
do
	if [ ${data} != "" ]; then
		touch "www/css/android/"${data}".css"
	fi
done