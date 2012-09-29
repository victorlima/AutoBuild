#!/bin/sh

PROJECT_HOME=`pwd`
PROJECT_PATH=./AutoBuildCD
PROJECT_NAME="AutoBuildCD"

cd ${PROJECT_PATH}
frank build

cd Frank
cucumber

cd ../../