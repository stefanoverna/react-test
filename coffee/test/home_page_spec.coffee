define ['jquery', 'react', 'components/home_page'], ($, React, HomePage) ->

  describe 'HomePage', ->
    page = input = text = null

    beforeEach ->
      page = React.addons.TestUtils.renderIntoDocument(HomePage())
      input = page.refs.input.getDOMNode()
      text = page.refs.text.getDOMNode()

    it 'greets me anonymously', ->
      expect($(text).text()).toBe('Ciao Anonimo!')

    describe 'when I insert a text', ->
      it 'greets me with the same text', ->
        $(input).val("Mark")
        React.addons.TestUtils.Simulate.change(input)
        expect($(text).text()).toBe('Ciao Mark!')

