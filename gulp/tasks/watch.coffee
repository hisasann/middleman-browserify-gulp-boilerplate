gulp = require 'gulp'
$ = require('gulp-load-plugins')()

config = require('../config').watch

gulp.task 'watch', ->
  # watchifyで監視するので、coffeeファイルはここでは監視しない
  # 第二引数のoptsは https://github.com/shama/gaze#properties を参照
  #  gulp.watch './src/**/*.coffee', {debounceDelay: 100}, ['browserify']
  gulp.watch config.sass, {debounceDelay: 100}, ['compass']
  gulp.watch config.css, {debounceDelay: 100}, ['css-concat']

