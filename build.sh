#!/bin/bash

IMAGEDIR=$1
if [ -z "$IMAGEDIR" ]; then 
	echo "$0 <build-folder-name>"
	exit 1
fi
cd ~/docker/images-Dockerfiles/$IMAGEDIR
IMAGE=$(head -1 Dockerfile|sed -e 's/#//')
docker build -t $IMAGE . 





