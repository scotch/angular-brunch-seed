
mod = {}

mod.AppCtrl = [
  '$scope'
  '$location'
  '$resource'
  '$rootScope'

(s, $location, $resource, $rootScope) ->

  # Uses the url to determine if the selected
  # menu item should have the class active.
  s.$location = $location
  s.$watch('$location.path()', (path) ->
    s.activeNavId = path || '/'
  )

  # getClass compares the current url with the id.
  # If the current url starts with the id it returns 'active'
  # otherwise it will return '' an empty string. E.g.
  #
  #   # current url = '/products/1'
  #   getClass('/products') # returns 'active'
  #   getClass('/orders') # returns ''
  #
  s.getClass = (id) ->
    if s.activeNavId.substring(0, id.length) == id
      return 'active'
    else
      return ''
]

mod.MyCtrl1 = [
  '$scope'

(s) ->
  s.Title = "MyCtrl1"
]

mod.MyCtrl2 = [
  '$scope'

(s) ->
  s.Title = "MyCtrl2"
]

angular.module('app.controllers', []).controller(mod)
