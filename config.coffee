exports.config =
  # See docs at http://brunch.readthedocs.org/en/latest/config.html.
  modules:
    definition: false
    wrapper: false
  paths:
    public: '_public'
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor/
        'test/scenarios.js': /^test(\/|\\)e2e/
      order:
        before: [
          'vendor/scripts/console-helper.js'
          'vendor/scripts/jquery-1.8.3.js'
          'vendor/scripts/angular/angular.js'
          'vendor/scripts/angular/angular-resource.js'
          'vendor/scripts/angular/angular-cookies.js'

          'vendor/scripts/bootstrap/bootstrap-transition.js'
          'vendor/scripts/bootstrap/bootstrap-alert.js'
          'vendor/scripts/bootstrap/bootstrap-button.js'
          'vendor/scripts/bootstrap/bootstrap-carousel.js'
          'vendor/scripts/bootstrap/bootstrap-collapse.js'
          'vendor/scripts/bootstrap/bootstrap-dropdown.js'
          'vendor/scripts/bootstrap/bootstrap-modal.js'
          'vendor/scripts/bootstrap/bootstrap-tooltip.js'
          'vendor/scripts/bootstrap/bootstrap-popover.js'
          'vendor/scripts/bootstrap/bootstrap-scrollspy.js'
          'vendor/scripts/bootstrap/bootstrap-tab.js'
          'vendor/scripts/bootstrap/bootstrap-typeahead.js'
          'vendor/scripts/bootstrap/bootstrap-affix.js'
        ]

    stylesheets:
      joinTo:
        'css/app.css': /^(app|vendor)/
    templates:
      joinTo: 'js/templates.js'

  plugins:
    jade:
      pretty: yes # Adds pretty-indentation whitespaces to output (false by default)

  # Enable or disable minifying of result js / css files.
  # minify: true
