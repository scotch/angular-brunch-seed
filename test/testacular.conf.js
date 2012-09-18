// Testacular configuration


// base path, that will be used to resolve files and exclude
basePath = '../';


// list of files / patterns to load in the browser
files = [
  JASMINE,
  JASMINE_ADAPTER,

  // CoffeeScript //
  // When using coffeescript you must run `./scripts/development.sh` in the background
  // to compile the .coffee file to .js.
  '_public/js/vendor.js',
  '_public/js/app.js',

  // Javascript //
	// When using javascript the compilation step in not required.
	// Uncomment these lines and comment out the coffeescript lines when using javascript
  // 'vendor/scripts/angular/angular.js',
  // 'vendor/scripts/**/*.js',
  // 'app/scripts/**/*.js',

  'test/vendor/angular/angular-mocks.js',

  // Specs
  'test/unit/**/*.spec.js'
];


// list of files to exclude
exclude = [];


// test results reporter to use
// possible values: dots || progress
reporter = 'progress';


// web server port
port = 3334;


// cli runner port
runnerPort = 9100;


// level of logging
// possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
logLevel = LOG_INFO;


// enable / disable watching file and executing tests whenever any file changes
autoWatch = true;


// Start these browsers, currently available:
// - Chrome
// - ChromeCanary
// - Firefox
// - Opera
// - Safari
// - PhantomJS
browsers = ['Chrome'];


// Continuous Integration mode
// if true, it capture browsers, run tests and exit
singleRun = false;
