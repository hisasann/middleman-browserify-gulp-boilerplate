gulp = require 'gulp'
$ = require('gulp-load-plugins')()

config = require('../config').compass

# Compass Task
gulp.task 'compass', ->
  # 新しくプロジェクトつくる場合はここに追加

  gulp.src [config.design.src]
  .pipe $.plumber()   # エラーが置きても中断させない
  .pipe $.compass
    config_file: './compass/config.rb'
    css: config.design.css
    sass: config.design.sass
    bundle_exec: true

  gulp.src [config.development.src]
  .pipe $.plumber()   # エラーが置きても中断させない
  .pipe $.compass
    config_file: './compass/config.rb'
    css: config.development.css
    sass: config.development.sass
    bundle_exec: true
