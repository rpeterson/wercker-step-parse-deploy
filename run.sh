#!/bin/bash

curl --progress-bar https://www.parse.com/downloads/cloud_code/parse -o ./
cd deploy
if [ ! -n "$WERCKER_PARSE_DEPLOY_TARGET" ]; then
  ../parse deploy
else
  ../parse deploy $WERCKER_PARSE_DEPLOY_TARGET
fi