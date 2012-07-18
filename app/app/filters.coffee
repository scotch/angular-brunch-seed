# Filters

angular.module('app.filters', []).
  filter('interpolate', ['version', (version) ->
    (text) ->
      String(text).replace(/\%VERSION\%/mg, version)
  ])

# TODO Convert to following syntax.
# # Create an object to hold the module.
# mod = {}
# 
# mod.interpolate = [
#   'version'
# 
# (version) ->
# 
#   (text) ->
#     String(text).replace(/\%VERSION\%/mg, version)
# ]
# 
# # register the module with Angular
# angular.module('app.filters', [
#   # require the 'app.service' module
# ]).filter(mod)
