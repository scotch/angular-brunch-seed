node_modules/jade-brunch/node_modules/jade/bin/jade app/index.jade --pretty --out app/assets/
node_modules/jade-brunch/node_modules/jade/bin/jade app/partials/ --pretty --out app/assets/partials/

del app/index.jade 
rd /s /q app/partials/
