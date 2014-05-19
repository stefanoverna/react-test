allTestFiles = []

TEST_REGEXP = /(spec|test)\.js$/i

pathToModule = (path) ->
  path.replace("/base/build/js/test", "../test").replace /\.js$/, ""

Object.keys(window.__karma__.files).forEach (file) ->

  # Normalize paths to RequireJS module names.
  allTestFiles.push pathToModule(file) if TEST_REGEXP.test(file)
  return

require.config
  # Karma serves files under /base, which is the basePath from your config file
  baseUrl: "/base/build/js/src"
  paths:
     'jquery':       '../vendor/jquery/dist/jquery',
     'underscore':   '../vendor/underscore-amd/underscore',
     'backbone':     '../vendor/backbone-amd/backbone',
     'react':        '../vendor/react/react-with-addons',
     'lodash':       '../vendor/lodash/lodash',
     'react-router': '../vendor/react-router-component/react-router-component'
     'react-async':  '../vendor/react-async/react-async'

  # dynamically load all test files
  deps: allTestFiles

  # we have to kickoff jasmine, as it is asynchronous
  callback: window.__karma__.start

