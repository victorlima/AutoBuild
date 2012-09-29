#!/bin/sh
#
# http://baolei.tumblr.com/post/32428168156/ios-unit-test-from-command-line-ios6-xcode4-5
# http://longweekendmobile.com/2011/04/17/xcode4-running-application-tests-from-the-command-line-in-ios/

PROJECT_HOME=`pwd`
PROJECT_PATH=./AutoBuildCD
PROJECT_NAME="AutoBuildCD"

TEST_TARGET="AutoBuildCDTests"

DSTROOT=../builds
OBJROOT=../builds
SYMROOT=../builds


echo "[#] - Testing project"
echo "-------------------------------------------------------------"
killall -m -KILL "iPhone Simulator"
xcodebuild  -project ${PROJECT_PATH}/${PROJECT_NAME}.xcodeproj \
			-target ${TEST_TARGET} \
			-configuration Debug \
			-sdk iphonesimulator5.1 \
				clean build \
				TEST_AFTER_BUILD=YES
