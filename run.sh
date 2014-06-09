#!/bin/bash

curl --progress-bar https://www.parse.com/downloads/cloud_code/parse -o ./parse
sudo chmod a+x ./parse
cd deploy
echo "PARSE_DEPLOY_TARGET: $PARSE_DEPLOY_TARGET"
echo "WERCKER_PARSE_DEPLOY_TARGET: $WERCKER_PARSE_DEPLOY_TARGET"

if [ ! -z "$WERCKER_PARSE_DEPLOY_TARGET" ]; then
  ../parse deploy $WERCKER_PARSE_DEPLOY_TARGET
  exit 0
fi

if [ ! -z "$PARSE_DEPLOY_TARGET" ]; then
  ../parse deploy $PARSE_DEPLOY_TARGET
  exit 0
fi

../parse deploy