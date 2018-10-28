#!/usr/bin/env bash
set -ex

# build site
yarn build

# serve site on localhost and run link checker
yarn serve &
child_id=$!
yarn blc
kill $!

# preparing lambda
cd lambda
yarn install
yarn generate
cd ..
