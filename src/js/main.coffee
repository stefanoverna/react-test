require.config
  paths:
    'jquery': 'vendor/jquery/dist/jquery',
    'underscore': 'vendor/underscore-amd/underscore',
    'backbone': 'vendor/backbone-amd/backbone',
    'react': 'vendor/react/react-with-addons',
    'lodash': 'vendor/lodash/lodash',
    'react-router-component': 'vendor/react-router-component/react-router-component'
    'react-async': 'vendor/react-async/react-async'

  shim:
    jquery:
      exports : "$"

requirejs.onError = (err) ->
  # debugger
  throw err

require ['jquery', 'react', 'components/app_router'], ($, React, AppRouter) ->
  $ ->
    React.renderComponent(AppRouter(), $("#mount").get(0))

