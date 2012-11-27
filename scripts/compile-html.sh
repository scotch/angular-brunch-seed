#!/bin/bash

node_modules/jade-brunch/node_modules/jade/bin/jade app/index.jade --pretty --out app/assets/
node_modules/jade-brunch/node_modules/jade/bin/jade --pretty --out app/assets/partials/

rm app/index.jade && rm -rf app/partials/
