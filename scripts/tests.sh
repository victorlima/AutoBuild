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
killall -m -KILL "iPhone Simulator"
xcodebuild  -project ${PROJECT_PATH}/${PROJECT_NAME}.xcodeproj \
			-scheme ${TEST_TARGET} \
			-configuration Debug \
			-sdk iphonesimulator5.1 \
				clean build \
				TEST_AFTER_BUILD=YES