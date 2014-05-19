module.exports = function(config) {
  config.set({
    basePath: '',
    frameworks: ['jasmine', 'requirejs'],
    files: [
      'build/js/test/main.js',
      {pattern: 'build/js/src/**/*.js', included: false},
      {pattern: 'build/js/test/**/*.js', included: false},
      {pattern: 'build/js/vendor/**/*.js', included: false},
    ],
    exclude: [ 'build/js/src/main.js' ],
    reporters: ['dots'],
    port: 9876,
    colors: true,
    logLevel: config.LOG_INFO,
    autoWatch: false,
    browsers: ['Chrome'],
    singleRun: false
  });
};

