###### Notice ######

*This file documents the changes in **angular-brunch-seed** versions that are listed below.*

* * *

### 0.4.0 ###
2013-7-14

+ upgraded to Brunch 1.7.0-pre Adding:
  + Source maps
  + Native Bower support
+ upgraded to karma 0.9.4
+ upgraded to bower 0.10.0

### 0.3.0 ###

2013-4-10

+ **BREAKING CHANGE** testacular test runner was renamed to [karma](https://github.com/karma-runner/karma)

### 0.2.3 ###

2013-4-10

+ update to Angular 1.0.6

### 0.2.2 ###

2013-2-27

+ update ./scripts/production.bat|sh scripts to Brunch 1.5 closes #52

### 0.2.1 ###

2013-2-26

+ added `vendor/` directory back as a temporary fix. Bower wasn't creating 
  the directory on Windows. Bower directory still needs to be switch to 
  `conponents/` issue #50

### 0.2.0 ###

2013-2-24

+ added Bower support contributed by @GulinSS. Bower package will be install
  in the `vendor` directory. NOTE: `vendor` directory is now ignored by git
+ switched Jade compilation to [jade-angularjs-brunch](https://github.com/GulinSS/jade-angularjs-brunch)
  [jade-angular-brunch](https://github.com/GulinSS/jade-angularjs-brunch)
  works by creating an Angular module named`'partials'` that adds the HTML
  string of the partials to the `$templateCache`. For this to work you must add
  `partials` to yours apps required modules list and include the `partials.js`
  file in your `index.html` file.
  If you are interested in the compiled HTML view the contents 
  of the `_public/js/partials.js` file.
+ Moved bootstrap templates to
  [boostrap-less-templates](https://github.com/scotch/boostrap-less-templates).
  They are now install as a Bower package.
+ Moved custom template `_override.less` and `_variables.less` to `app/styles/`
+ Removed mention of SASS and SCSS files from README.md issue #47. These file
  types require the sass gem. 

### 0.0.7 ###

2013-1-1

+ updated Bootstrap to 2.3 contributed by @davoudrafati

### 0.0.6 ###

2012-12-17

+ updated AngularJS to 1.0.3 contributed by @Hoverbear
+ updated Bootstrap to 2.22 contributed by @Hoverbear
+ updated jQuery to 1.83 contributed by @Hoverbear

### 0.0.5 ###

2012-12-01

+ update `jade-brunch` to `1.4.1` resolving issue #32 - jade / jade-brunch dependency problem

### 0.0.4 ###

2012-11-05

+ update to bootstrap 2.2.1
  - made "styles/themes/custom" the default
+ Added a todo example commplements of @paivaric

### 0.0.3 ###

2012-10-25

+ update to testacular 0.4.x
  - compiling test files to javascript is no longer necessary.

### 0.0.2 ###


2012-09-19

+ removed function wrapper
+ added `/scripts/compile-html.sh` script which will compile html from `app/**/*.jade` files and delete *.jade files
