module.exports = (grunt) ->
  grunt.config.init 
    pkg: grunt.file.readJSON("package.json")
    meta:
      version: "<%= pkg.version %>"
      banner: "/* NoFF - v<%= pkg.version %>"+
        "* generated: <%= grunt.template.today(\"yyyy-mm-dd - HH:mm:ss.sss\") %>*/\n\n\n"
    coffee:
      options:
        bare: true
      compile:
        files:
          "dist/noff.js": ["src/noff.coffee"]

    uglify:
      dist:
        src: "dist/noff.js"
        dest: "dist/noff.min.js"
      
  grunt.loadNpmTasks "grunt-contrib"
  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.registerTask "default", ["coffee"]
  grunt.registerTask "deploy", ["coffee","uglify"]
