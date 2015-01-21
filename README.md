:lipstick: middleman-browserify-gulp-boilerplate :lipstick:
===============

<p align="center">
  <img height="400" width="400" src="https://middlemanapp.com/jp/images/mm-blue-w-text.svg">
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

    git clone TODO

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
