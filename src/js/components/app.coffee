define ['react'], (React) ->

  { div, input, p } = React.DOM

  React.createClass
    displayName: 'App'
    getInitialState: ->
      name: ""
    update: ->
      @setState name: $(@refs.input.getDOMNode()).val()
    render: ->
      div(
        null
        input(ref: 'input', onChange: @update, type: 'text')
        p(null, "Ciao #{@state.name}!")
      )

