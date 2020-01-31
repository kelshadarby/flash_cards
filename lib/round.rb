require './lib/card'
require './lib/turn'
require './lib/deck'

class Round

  attr_reader :deck, :turns

  def initialize(deck)
    @deck = deck
    @turns = []
  end

end # class

# use @ for attribute of item being created
