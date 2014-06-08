#!/bin/bash

curl --progress-bar https://www.parse.com/downloads/cloud_code/parse -o ./
cd deploy
../parse deploy $WERCKER_PARSE_DEPLOY_TARGET