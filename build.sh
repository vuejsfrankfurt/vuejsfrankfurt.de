#!/usr/bin/env bash
set -ex

# build site
yarn build

# serve site on localhost and run link checker
# this call is optimized to run on the netlify server
node /opt/build/repo/node_modules/.bin/serve -n docs/.vuepress/dist &
child_id=$!
yarn blc
ps xu
kill $child_id || true
ps xu

# preparing lambda
cd lambda
yarn install
yarn generate
cd ..
