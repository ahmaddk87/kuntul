#!/bin/sh

COUNTER=20
until [  $COUNTER -lt 10 ]; do
 
TOKEN="992a472fcf4456703c2e8dbfdb0811e0254580d7505e8aeba8" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
~/.buildkite-agent/bin/buildkite-agent start
 
     echo COUNTER $COUNTER
     let COUNTER-=1
done
