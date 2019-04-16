#!/bin/bash
./updateAllFiles.sh

if [  ! -n "$1"  ]
	then platForm="ios"
	else platForm=$1
fi
echo "Build Ionic Project Now, Platform is "$platForm
ionic build $platForm