define ['react', 'components/canvas'], (React, Canvas) ->

  React.createClass
    displayName: 'AboutPage'
    render: ->
      Canvas(null,
        React.DOM.h1(null, "About")
      )

