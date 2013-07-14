exports.config =
  # See docs at http://brunch.readthedocs.org/en/latest/config.html.
  conventions:
    # ignored: /(^vendor\\.*\.less)|(^vendor\/.*\.less)|(^|\/)node_modules\/|(^|\/)_/
    assets: /^app\/assets\//
  modules:
    definition: false
    wrapper: false
  paths:
    public: '_public'
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^(bower_components|vendor)/
        'js/yo.js': /^bower_components/
        'test/scenarios.js': /^test(\/|\\)e2e/
      order:
        before: [
          'bower_components/console-polyfill/index.js'
          'bower_components/jquery/jquery.js'
          'bower_components/angular/angular.js'
          'bower_components/angular-resource/angular-resource.js'
          'bower_components/angular-cookies/angular-cookies.js'
          'bower_components/angular-sanitize/angular-sanitize.js'
          'bower_components/bootstrap/docs/assets/js/bootstrap.js'
        ]

    # stylesheets:
    #   joinTo:
    #     'css/app.css': /^(app|vendor)/
    #   order:
    #     before: [
    #       'app/styles/app.less'
    #     ]

    templates:
      joinTo: 
        'js/dontUseMe' : /^app/ # dirty hack for Jade compiling.

  plugins:
    jade:
      pretty: yes # Adds pretty-indentation whitespaces to output (false by default)
    jade_angular:
      modules_folder: 'partials'
      locals: {}

    # bower:
    #   extend:
    #     "bootstrap" : 'vendor/bootstrap/docs/assets/js/bootstrap.js'
    #     "angular-mocks": []
    #     "styles": []
    #   asserts:
    #     "img" : /bootstrap(\\|\/)img/
    #     "font": /font-awesome(\\|\/)font/


  # Enable or disable minifying of result js / css files.
  # minify: true
