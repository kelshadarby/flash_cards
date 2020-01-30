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
    cards.each do |card|
      if @Card.category == category_name
      end # if
    end # each
  end # cards_in_category

end
