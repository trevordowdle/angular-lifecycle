matchdep = require 'matchdep'

module.exports = (grunt) ->
  grunt.initConfig

    clean:
      dist: ['dist']

    coffee:
      compile:
        options:
          sourceMap: true
        files:
          'dist/angular-lifecycle.js': 'src/**/*.coffee'

    ngmin:
      all:
        src: [ 'dist/angular-lifecycle.js' ]
        dest: 'dist/angular-lifecycle.js'

    uglify:
      options:
        mangle: true
        compress: true
      app:
        files:
          'dist/angular-lifecycle.js': [ 'dist/angular-lifecycle.js' ]

  matchdep.filterDev('grunt-*').forEach grunt.loadNpmTasks

  grunt.registerTask 'dist', [ 'clean', 'coffee', 'ngmin', 'uglify' ]
  grunt.registerTask 'default', [ 'dist' ]
