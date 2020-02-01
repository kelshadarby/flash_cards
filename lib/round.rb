require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

class Round

  attr_reader :deck, :turns

  def initialize(deck)
    @deck = deck
    @turns = []
  end

  def current_card
   @deck.cards.first
  end

  def take_turn(guess)
    turn = Turn.new(guess, current_card)
    @turns << turn
    @deck.cards.rotate!
    @deck.cards.pop
    turn
  end

  def number_correct
      @turns.count do |turn|
        turn.correct?
      end #loop
  end #method

end

#end # class


# use @ for attribute of item being created
