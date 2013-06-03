
'use strict'

# Declare app level module which depends on filters, and services
App = angular.module('app', [
  #used for angular-ui-router
  'ui.state'
  
  'ngCookies'
  'ngResource'
  'app.controllers'
  'app.directives'
  'app.filters'
  'app.services'
  'top.partials'
  'home.partials'
  'app.home.controllers'
  'view1.partials'
  'app.view1.controllers'
  'view2.partials'
  'app.view2.controllers'
])

App.config([
  '$stateProvider'
  '$routeProvider'

  ($stateProvider, $routeProvider) ->
    
    $stateProvider

      .state('todo', 
          url: "/todo"
          views:
            "main-content": 
              templateUrl: "/home/todo.html"
      )

      .state('view1', 
          url: "/view1"
          views:
            "main-content": 
              templateUrl: "/view1/partial1.html"
      )

      .state('view2', 
          url: "/view2"
          views:
            "main-content": 
              templateUrl: "/view2/partial2.html"
      )
])
