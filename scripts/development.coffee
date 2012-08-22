# run 
# node_modules/brunch/bin/brunch watch
# JadeMaker

spawn = require("child_process").spawn
options =
  stdio: [
      null
      process.stdout
      process.stderr
    ],
  env: process.env

spawn 'brunch', ['watch', '--server'], options
spawn 'coffee', ['scripts/JadeMaker/make.coffee'], options