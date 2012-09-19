# angular-brunch-seed
### A started project for AngularJS using Brunch.io

[AngularJS](http://angularjs.org) + [Brunch](http://brunch.io)

Features:
* Coffeescript / Jade / Less / SASS / SCSS / Stylus automatically compiled on save
* auto-reload during development saves you from manually refreshing the page
* Javascript / CSS minification for production
* [testacular](https://github.com/vojtajina/testacular) integration for
  unit tests
* Bootstrap integration with themes.

## How to use angular-brunch-seed

* `git clone https://github.com/scotch/angular-brunch-seed.git` to clone the **angular-brunch-seed** repository
* `cd angular-brunch-seed`
* `./scripts/init.sh` to install node packages

or if you have **Brunch** installed run:

`brunch new myapp --skeleton https://github.com/scotch/angular-brunch-seed`


### Using Jade

You will find the jade files in the `app` and `app/partials` directories. Upon save the Jade files will be compiled to HTML
and placed in the `app/assets` folder. Do not modify the files in the `app/assets` folder as they will be overriden with subsequent
changes to their `*.jade` counter part.

### Using html

By default angular-brunch-seed uses jade templates. If you would prefer to use HTML run the command:

```
./scripts/compile-html.sh
```
All Jade file will be compiled to HTML and be placed in the `app/assets` directory. Addtionally, the `*.jade`
files will be removed from the project. Any changes that you make to the `app/assets/**/*.html` files will now appear in the
browser.

### Running the app during development

* `./scripts/server.sh` to serve using **Brunch**

Then navigate your browser to [http://localhost:3333](http://localhost:3333)

### Running the app in production

* `./scripts/production.sh` to minify javascript and css files.

### Running unit tests

* `./scripts/test.sh` to run unit test with [testacular](https://github.com/vojtajina/testacular)
* Open the browser you would like to test to [http://localhost:3334](http://localhost:3334)

Notes:

- If you would like to write your test in coffeescript run `./scripts/compile-tests.sh` in a 
seperate window.
- Testacular will run tests on save. To insure that changes are
saved be sure to have `./script/server.sh` or `./script/development.sh` running in the console.
- If you are on OS X you set the browsers that you would like to target
  in the `/test/testacular_conf.js` file E.g. `browser = ["ChromeCanary", "Firefox"]`

### End to end testing

WIP

### Common issues

`EMFILE` error
- EMFILE means there're too many open files. Brunch watches all your project files and it's usually a pretty big number. You can fix this error with setting max opened file count to bigger number with command ulimit -n <number> (10000 should be enough).

The compelete [Brunch FAQ](https://github.com/brunch/brunch/blob/master/docs/faq.rst)
### Receiving updates from upstream

When we upgrade angular-seed's repo with newer angular or testing library code, you can just
fetch the changes and merge them into your project with git.

`git pull origin master`

## Directory Layout

    _public/                  --> Contains generated file for servering the app
                                  These files should not be edited directly
    app/                      --> all of the files to be used in production

      assets                  --> a place for static assets. These files will be copied to
                                  the public directory un-modified.
        font/                 --> [fontawesome](http://fortawesome.github.com/Font-Awesome/) rendering icons
          fontawesome-webfont.*
        img/                  --> image files
        partials/             --> angular view partials (partial HTML templates)
          nav.html                If you are using HTML you may modify these files directly.
          partial1.html           If you are using Jade these file will be update from their *.jade counterpart
          partial2.html
        index.html            --> app layout file (the main html template file of the app).

      partials/               --> Jade partial files. This file will be converted to HTML upon save.
        nav.jade              If you are using HTML this directory will not be present. You will find the template file
        partial1.jade         in the `app/assets/partials` directory instead.
        partial2.jade         If you are using Jade these file will be converted to HTML and copied to `app/assets/partials` upon save.
      scripts/                --> base directory for app scripts
        controllers.js        --> application controllers
        directives.js         --> custom angular directives
        filters.js            --> custom angular filters
        services.js           --> custom angular services

      styles/                 --> all custom styles. Acceptable files types inculde:
                                  less, sass, scss and stylus
        themes/               --> a place for custom themes
          custom/             --> starter theme **NOTE the underscore (_). Files begining with an
                                  underscore will not automatically be compiled, they must be imported.
            _override.less    --> styles that should beloaded after bootstrap.
            _variables.less   --> bootstrap variables to be used during the compilation process
        app.less              --> a file for importing styles.
      app.coffee              --> application definition and routes.
      index.jade              --> Index file. This will be converted to assets/index.html on save
      init.coffee             --> application bootstrap

    node_modules              --> NodeJS modules

    scripts/                  --> handy shell scripts
      compile-html.sh         --> compiles *.jade file to *.html file and places them in app/assets
      compile-tests.sh        --> compiles coffeescript test to javascript
      development.sh          --> compiles files and watches for changes
      init.sh                 --> installs node modules
      production.sh           --> compiles and compresses files for production use
      server.sh               --> runs a development server at `http://localhost:3333`
      test.sh                 --> runs all unit tests

    test/                     --> test source files and libraries
      e2e/                    -->
        scenarios.js          --> end-to-end specs **NOT WORKING YET**
      unit/
        controllers.spec.js   --> specs for controllers
        directives.spec.js    --> specs for directives
        filters.spec.js       --> specs for filters
        services.spec.js      --> specs for services
      vendor/
        angular/              --> angular testing libraries
          angular-mocks.js    --> mocks that replace certain angular services in tests

    vendor/
      scripts/                --> angular and 3rd party javascript libraries
        angular/                  files are compiled to `vendor.js`
          angular.js          --> the latest angular js
          angular-*.js        --> angular add-on modules
          version.txt         --> version number
        bootstrap/            --> for responsive layout
          bootstrap-collapse.js
        console-helper.js     --> makes it safe to do `console.log()` always
        jquery-1.7.2.js       --> for use with bootstrap-collapse
      styles/                 --> sapling / sapling themes and 3 party CSS
        bootstrap/            --> boostrap files - **NOTE** the underscore prevents the
          _*.less                 files from automatically being added to application.css
        sapling               --> extends boostrap
          _*.less
        themes                --> themes to extend Bootstrap
          default             --> the default bootstrap theme
            _overrides.less
            _variables.less
          sapling             --> supplemental theme
            _overrides.less
            _variables.less
          smokey              --> supplemental theme
            _overrides.less
            _variables.less
## Contact

Coming soon...

For more information on angular please check out <http://angularjs.org>
