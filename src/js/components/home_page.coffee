define ['react', 'components/canvas'], (React, Canvas) ->

  React.createClass
    displayName: 'HomePage'
    getInitialState: ->
      name: "Anonimo"
    update: ->
      @setState name: $(@refs.input.getDOMNode()).val()
    render: ->
      Canvas(null,
        React.DOM.input(ref: 'input', onChange: @update),
        React.DOM.p(null, "Ciao #{@state.name}!")
      )

