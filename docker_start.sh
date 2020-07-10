#!/usr/bin/env bash
SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
docker run --restart=always  -d \
-e USERPWD="3024-night" \
-p 4200:4200 \
-p 80:80 \
-p 23333:23333 \
--name gd-utils \
gd-utils
