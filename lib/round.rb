require './lib/card'
require './lib/turn'
require './lib/deck'

class Round

  attr_reader :deck, :turns

  def initialize(deck)
    @deck = deck
    @turns = []
  end

  def current_card
   if Deck.cards[1] == Turn.card
   end
  end

end # class

card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

deck1 = Deck.new([card_1, card_2, card_3])
round1 = Round.new(deck1)



 #if card = card then is current_card
# use @ for attribute of item being created
