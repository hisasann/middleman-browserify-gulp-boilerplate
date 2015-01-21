:lipstick: middleman-browserify-gulp-boilerplate
===============

<p align="center">
  <img src="https://raw.githubusercontent.com/hisasann/middleman-browserify-gulp-boilerplate/master/middleman.png">
</p>

## Overview

This boilerplate can make a ``multi-language`` Web applications to use the middlen.
In addition, we are disposed so as not to hit the ``ES6 (6to5ify), browserify, gulp, Sass`` on the architecture of the middleman.

## Tools

* middleman - multi language tool
* gulp
* bundler
* browserify
* ES6
* 6to5ify
* Sass
* Compass

## Getting Started

clone the repository.

    git clone git@github.com:hisasann/middleman-browserify-gulp-boilerplate.git

set up the necessary files.

    npm i

    bundle install  --path vendow/bundle

run a gulp in Terminal 1

    gulp local

run a middleman in Terminal 2

    bundle exec middleman server
  
if you want to release build 

    gulp product
  
    bundle exe middleman build

Please enter the following URL to launch the browser.

    http://localhost:4567/jp/test/
    
or

    http://localhost:4567/en/test/
    
## Directory Structure

    ├── build
    │   └── middleman is a file who have build.
    ├── compass
    │   └── config.rb
    ├── gulp
    │   └── tasks
    ├── helpers
    │   └── helper ruby files
    ├── locales
    │   └── jp.yml
    ├── node_modules
    ├── source
    │   ├── images
    │   ├── javascripts
    │   ├── layouts
    │   ├── localizeble
    │   └── stylesheets
    ├── source-app
    │   ├── javascript
    │   └── stylesheets
    └── vendor
        └── ruby modules

## Licence

MIT

## Author

[hisasann](https://github.com/hisasann)

:arrow_up: enjoy! :arrow_up:
