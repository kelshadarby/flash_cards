require './lib/card'

class Deck

  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.length
  end

  def cards_in_category(category_name)
    cards_in_category = []

      @cards.each do |card|
        if card.category == category_name
          cards_in_category << card
       end
     end # map loop
     cards_in_category
  end # cards_in_category

end # class

card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)


cards1 = [card_1, card_2, card_3]
deck1 = Deck.new(cards1)

puts deck1.cards_in_category(:STEM)
