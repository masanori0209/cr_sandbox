#!/usr/bin/env bash

echo Installing NPM packages...
yarn install --verbose --network-timeout 100000

echo Building Strapi...
yarn build

echo Starting Strapi...
yarn develop