define ['react', 'components/site_nav'], (React, SiteNav) ->

  React.createClass
    displayName: 'Canvas'
    render: ->
      React.DOM.div(null,
        SiteNav(),
        @props.children
      )

