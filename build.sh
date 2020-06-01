#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
BUILD_CONFIG_FILE=$CURRENT_DIR"/build.conf"
# echo "Trying to read $BUILD_CONFIG_FILE"


#docker build -t alert-server .
if [ ! -f "$BUILD_CONFIG_FILE" ]; then
    echo "Error : Cannot read config file!"
    exit 1
fi

IMAGE_NAME=$(grep "^imageName" $BUILD_CONFIG_FILE | grep -oP "\".+\"" | tr --delete \")
echo "Image name :$IMAGE_NAME"

docker build -t $IMAGE_NAME .
exit 0