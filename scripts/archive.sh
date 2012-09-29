#!/bin/sh

PROJECT_HOME=`pwd`
PROJECT_PATH=./AutoBuildCD
PROJECT_NAME="AutoBuildCD"

BUILD_TARGET="AutoBuildCD"

DATE=`date +"%Y%m%d-%H%M%S"`
APP_NAME="AutoBuildCD"
SIGN_IDENTITY="iPhone Distribution: Concrete Solutions Ltda"
PROVISIONING_PROFILE="./provision/AutoBuildCD_Ad_Hoc.mobileprovision"

DSTROOT=../builds
OBJROOT=../builds
SYMROOT=../builds

echo "[#] - Archiving project"
echo "-------------------------------------------------------------"
xcodebuild -project ${PROJECT_PATH}/${PROJECT_NAME}.xcodeproj \
		   -target ${BUILD_TARGET} \
		   -configuration Release \ 
			clean build \
  		   		DSTROOT=${DSTROOT} \
  		   		SYMROOT=${SYMROOT} \
  		   		OBJROOT=${OBJROOT}

xcrun -sdk iphoneos PackageApplication -v builds/Release-iphoneos/${APP_NAME}.app -o $PWD/builds/${APP_NAME}-$DATE.ipa \
		--sign "${SIGN_IDENTITY}" --embed "${PROVISIONING_PROFILE}"

echo "[#] - New release available at: $PWD/${APP_NAME}-${DATE}.ipa"
