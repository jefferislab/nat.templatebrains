#!/bin/bash

# Get last nat.flybrains build number
BUILD_NUM=$(curl -s 'https://api.travis-ci.org/repos/jefferislab/nat.flybrains/builds' | grep -o '^\[{"id":[0-9]*,' | grep -o '[0-9]' | tr -d '\n')
# Restart last nat.flybrains build
curl -X POST https://api.travis-ci.org/builds/$BUILD_NUM/restart --header "Authorization: token "$AUTH_TOKEN
