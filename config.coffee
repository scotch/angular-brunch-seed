exports.config =
  # See docs at http://brunch.readthedocs.org/en/latest/config.html.
  conventions:
    ignored: /^(components.*\.less|.+node_modules.+|.+_.+\.+)$/
  modules:
    definition: false
    wrapper: false
  paths:
    public: '_public'
    vendor: 'components'
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/components.js': /^components/
        'test/scenarios.js': /^test(\/|\\)e2e/
      order:
        before: [
          'components/console-polyfill/index.js'
          'components/jquery/jquery.js'
          'components/angular/angular.js'
          'components/angular-resource/angular-resource.js'
          'components/angular-cookies/angular-cookies.js'
          'components/angular-sanitize/angular-sanitize.js'
          'components/bootstrap/docs/assets/js/bootstrap.js'
        ]

    stylesheets:
      joinTo:
        'css/app.css': /^(app|components)/

    templates:
      joinTo:
        'js/dontUseMe' : /^app/ # dirty hack for Jade compiling.

  plugins:
    jade:
      pretty: yes # Adds pretty-indentation whitespaces to output (false by default)
    jade_angular:
      modules_folder: 'partials'
      locals: {}

    bower:
      extend:
        "bootstrap" : 'components/bootstrap/docs/assets/js/bootstrap.js'
        "angular-mocks": []
        "styles": []
      asserts:
        "img" : /bootstrap(\\|\/)img/
        "font": /font-awesome(\\|\/)font/


  # Enable or disable minifying of result js / css files.
  # minify: true
