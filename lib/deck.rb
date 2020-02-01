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

      @cards.map do |card|
        if card.category == category_name
       end
     end # map loop
     cards_in_category
  end # cards_in_category

end # class
