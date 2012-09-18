exports.config =
  # See docs at http://brunch.readthedocs.org/en/latest/config.html.
  modules:
    definition: false
    wrapper: (path, data) ->
      """
(function() {
  'use strict';
  #{data}
}).call(this);\n\n
      """
  paths:
    public: '_public'
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor/
      order:
        before: [
          'vendor/scripts/console-helper.js'
          'vendor/scripts/jquery-1.7.2.js'
          'vendor/scripts/angular/angular.js'
          'vendor/scripts/angular/angular-resource.js'
          'vendor/scripts/angular/angular-cookies.js'
        ]

    stylesheets:
      joinTo:
        'css/app.css': /^(app|vendor)/
    templates:
      joinTo: 'js/templates.js'

  # Enable or disable minifying of result js / css files.
  # minify: true
