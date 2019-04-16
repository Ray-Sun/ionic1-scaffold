#!/bin/bash
echo "IOS Device Style Contating..."
gulp css-concat --cssFiles "app/*/deviceStyle/ios/style.css" --fileName "style.css" --des "./www/css/ios/"
echo "IOS Main Style Css file has been contated."
iosDevice=($(awk '{print $1}' app/iosDeviceList.config))
for data in ${iosDevice[@]}
do
	if [ ${data} != "" ]; then
		gulp css-concat --cssFiles "app/*/deviceStyle/ios/"${data}".css" --fileName ${data}".css" --des "./www/css/ios/"
		echo "IOS "${data}".css file has been contated."
	fi
done
echo "Android Device Style Contating..."
gulp css-concat --cssFiles "app/*/deviceStyle/android/style.css" --fileName "style.css" --des "./www/css/ios/"
echo "Android Main Style Css file has been contated."
androidDevice=($(awk '{print $1}' app/androidDeviceList.config))
for data in ${androidDevice[@]}
do
	if [ ${data} != "" ]; then
		gulp css-concat --cssFiles "app/*/deviceStyle/android/"${data}".css" --fileName ${data}".css" --des "./www/css/android/"
		echo "Android "${data}".css file has been contated."
	fi
done

echo "Module Style Contating..."
gulp css-concat --cssFiles "app/*/*.css"
echo "Module Style File Has Been Contated."
