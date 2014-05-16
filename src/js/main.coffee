require.config
  paths:
    'jquery': 'vendor/jquery/dist/jquery',
    'underscore': 'vendor/underscore-amd/underscore',
    'backbone': 'vendor/backbone-amd/backbone',
    'react': 'vendor/react/react',
    'lodash': 'vendor/lodash/lodash',
  shim:
    jquery:
      exports : "$"
    react:
      exports : "React"

require ['jquery', 'react', 'components/app'], ($, React, App) ->
  $ ->
    app = App()
    mountNode = $("#mount")

    React.renderComponent(app, mountNode.get(0))

