define ['react', 'react-router-component', 'components/home_page', 'components/about_page'], (React, Router, HomePage, AboutPage) ->

  React.createClass
    displayName: 'AppRouter'
    onBeforeNavigation: (path, match) ->
    render: ->
      Router.Locations(onBeforeNavigation: @beforeNavigation, hash: true,
        Router.Location(path: '/', handler: HomePage)
        Router.Location(path: '/about', handler: AboutPage)
      )

