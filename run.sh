#!/bin/bash

curl --progress-bar https://www.parse.com/downloads/cloud_code/parse -o ./parse
sudo chmod a+x ./parse
cd deploy
if [ ! -z "$WERCKER_PARSE_DEPLOY_TARGET" ]; then
  ../parse deploy $WERCKER_PARSE_DEPLOY_TARGET
else
  ../parse deploy
fi