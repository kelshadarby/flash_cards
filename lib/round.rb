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

  def number_correct_by_category(category)
    @turns.count do |turn|
      if turn.card.category == category && turn.correct?
        number_correct
      end # if
    end # each
  end # method

  def percent_correct
    (number_correct.to_f/@turns.count.to_f)*100
  end

  def percent_correct_by_category(category)
    (number_correct_by_category(category).to_f/number_correct.to_f)*100
  end

  end
