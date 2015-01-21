gulp = require 'gulp'
$ = require('gulp-load-plugins')()

config = require('../config').jsLibConcat

# ライブラリ系はbrowerifyにまぜると重くなるので、別だしでconcatする
# ライブラリを追加した場合はこのタスクを実行すること
gulp.task 'js-lib-concat', ->
  gulp.src config.srcs
  .pipe $.concat 'lib.js'
  .pipe $.if global.isRelease, $.uglify({preserveComments: 'some'})    # リリース時は圧縮する
  .pipe gulp.dest config.dest
  .pipe $.size()
