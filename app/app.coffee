
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
  'navbar.partials'
  'todo.partials'
  'app.todo.controllers'
  'view1.partials'
  'app.view1.controllers'
  'view2.partials'
  'app.view2.controllers'
])

App.config([
  '$stateProvider'
  '$urlRouterProvider'

  ($stateProvider, $urlRouterProvider) ->

    # default to the todo page
    $urlRouterProvider.otherwise("/todo")
    
    $stateProvider

      .state('todo', 
          url: "/todo"
          views:
            "main-content": 
              templateUrl: "/todo/todo.html"
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
