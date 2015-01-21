module.exports = {
  browserify: [
    {
      input      : ['./source-app/javascripts/index.js']
      output     : 'bundle.js'
      extensions : ['.js']
      destination: './source/javascripts/'
    }
  ]
  watch: {
    sass: './source-app/stylesheets/**/*.scss'
    css: './source-app/stylesheets/**/*.css'
  }
  compass:
    design: {
      src: './source-app/stylesheets/style.scss'
      css: 'source-app/stylesheets'
      sass: 'source-app/stylesheets'
    }
    development: {
      src: './source-app/stylesheets/development.scss'
      css: 'source-app/stylesheets'
      sass: 'source-app/stylesheets'
    }
  jsLibConcat: {
    srcs: [
    ]
    dest: './source/javascripts/'
  }
  cssConcat: {
    srcs: [
      './source-app/stylesheets/normalize.css'
      './source-app/stylesheets/style.css'
      './source-app/stylesheets/development.css'
    ]
    dest: './source/stylesheets/'
  }
}

