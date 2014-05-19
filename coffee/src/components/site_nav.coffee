define ['react', 'react-router'], (React, Router) ->
  React.createClass
    displayName: 'SiteNav'

    mixins: [Router.NavigatableMixin]

    getDefaultProps: ->
      links: [
        {label: 'Home', link: '/'},
        {label: 'About', link: '/about'},
      ]

    activeClass: (link) ->
      if @getPath() == link
        'active'
      else
        null

    render: ->
      React.DOM.ul(null,
        @props.links.map (el, i) =>
          React.DOM.li(key: i,
            Router.Link(
              href: el.link,
              className: @activeClass(el.link),
              el.label
            )
          )
      )

