#!/bin/bash

if [ -z "$REPOURL" ]; then 
	echo "You need to pass Git Repo URL"
	exit 1
fi

cd /opt
rm -rf *
git clone $REPOURL
if [ $? -ne 0 ]; then 
	echo "Unable to download Repository"
	exit 1
fi
DIR=$(echo $REPOURL |awk -F / '{print $NF}' | sed -e 's/.git$//')
cd $DIR
mvn clean package
