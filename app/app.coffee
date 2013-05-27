'use strict'

# Declare app level module which depends on filters, and services
App = angular.module('app', [
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
  '$routeProvider'
  '$locationProvider'

($routeProvider, $locationProvider, config) ->

  $routeProvider

    .when('/todo', {templateUrl: '/home/todo.html'})
    .when('/view1', {templateUrl: '/view1/partial1.html'})
    .when('/view2', {templateUrl: '/view2/partial2.html'})

    # Catch all
    .otherwise({redirectTo: '/todo'})

  # Without server side support html5 must be disabled.
  $locationProvider.html5Mode(false)
])
