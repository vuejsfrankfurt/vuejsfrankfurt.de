#!/usr/bin/env bash
set -ex

# build site
yarn build

# serve site on localhost and run link checker
yarn serve &
child_id=$!
yarn blc
ps xu
pkill -p $child_id || true
ps xu

# preparing lambda
cd lambda
yarn install
yarn generate
cd ..
