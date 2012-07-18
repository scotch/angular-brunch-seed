# Services

# Create an object to hold the module.
mod = {}

mod.version = -> "0.1"

angular.module('app.services', []).factory(mod)
