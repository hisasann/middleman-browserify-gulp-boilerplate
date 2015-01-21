gulp = require 'gulp'
$ = require('gulp-load-plugins')()
browserify = require 'browserify'
watchify = require 'watchify'
source = require 'vinyl-source-stream'
buffer = require 'vinyl-buffer'
colors = require 'colors'

javascriptFiles = require('../config').browserify

createBundle = (options) ->
  bundler = browserify(
    entries: options.input
    extensions: options.extensions
    cache: {}
    packageCache: {}
    fullPaths: false
    debug: true
  )
  bundler = watchify(bundler) if global.isWatching
  bundler
  .on("log", $.util.log)

  rebundle = ->
    startTime = new Date().getTime()
    bundler.bundle()
    .on 'error', ->
      console.log arguments
    .pipe(source(options.output))
    .pipe buffer()
    .pipe $.if global.isRelease, $.uglify({preserveComments: 'some'})    # リリース時は圧縮する
    .pipe $.size(gulp) # jsのファイルサイズ
    .pipe gulp.dest(options.destination)
    .on 'end', ->
      time = (new Date().getTime() - startTime) / 1000
      console.log "#{options.output.cyan} was browserified: #{(time + 's').magenta}"

  if global.isWatching
    bundler.on 'update', rebundle

  rebundle()

createBundles = (bundles) ->
  bundles.forEach (bundle) ->
    createBundle
      input      : bundle.input
      output     : bundle.output
      extensions : bundle.extensions
      destination: bundle.destination

gulp.task 'browserify', ->
  createBundles javascriptFiles
