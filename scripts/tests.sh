#!/bin/sh

PROJECT_HOME=`pwd`
PROJECT_PATH=./AutoBuildCD
PROJECT_NAME="AutoBuildCD"

TEST_TARGET="AutoBuildCDTests"

DSTROOT=../builds
OBJROOT=../builds
SYMROOT=../builds


echo "[#] - Testing project"
echo "-------------------------------------------------------------"
xcodebuild  -project ${PROJECT_PATH}/${PROJECT_NAME}.xcodeproj \
		    -target ${TEST_TARGET} \
			-configuration Debug \
			-sdk iphonesimulator \
				clean build \
  		   		DSTROOT=${DSTROOT} \
  		   		SYMROOT=${SYMROOT} \
  		   		OBJROOT=${OBJROOT}
