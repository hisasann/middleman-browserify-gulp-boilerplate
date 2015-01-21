gulp = require 'gulp'
$ = require('gulp-load-plugins')()
runSequence = require 'run-sequence'

gulp.task 'global-local',->
  global.isWatching = true

gulp.task 'global-product',->
  global.isRelease = true

gulp.task 'local', ->
  runSequence 'global-local', 'js-lib-concat', 'browserify', 'compass', 'css-concat', 'watch'

gulp.task 'product', ->
  runSequence 'global-product', 'js-lib-concat', 'browserify', 'compass', 'css-concat'
