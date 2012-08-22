fs        = require "fs"
path      = require "path"
spawn     = require('child_process').spawn
util      = require 'util'
chokidar  = require "chokidar"
nconf     = require "nconf"

watched = {}

watch = (dirname) ->
  watcher = chokidar.watch dirname,
    ignored: /^\./
    persistent: true

  watcher
    .on "add", (fpath) ->
      ##### configuration #####
      jadeOpt =
        procName: "jade"
        args: [
            "--pretty"
            "--watch" ]
        options:
          stdio: [
              null
              process.stdout
              process.stderr
            ],
          env: process.env
        pathRE: /.+\.jade$/
      #########################
      
      if jadeOpt.pathRE.test fpath
        fs.stat fpath, (error, stats) ->
          if stats.isFile()
            watched[fpath] = spawn(
              jadeOpt.procName
              jadeOpt.args.concat fpath
              jadeOpt.options).pid

    .on("error", (error) -> util.debug "Error happened: " + error)
    .on("unlink", (fpath) -> process.kill watched[fpath] if fpath of watched)

  # Only needed if watching is persistent.
  watcher.close()

nconf
  .argv()
  .env()
  .file file: './jade_maker.json'
    
watch dir for dir in nconf.get "dirs"