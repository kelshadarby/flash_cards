require './lib/card'

class Turn

  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def guess
    @guess
  end

  def card
    @card
  end

  def correct? #remove if
    @guess == @card.answer
  end

  def feedback
    if @guess == @answer
      p "Correct!"
    elsif @guess != @answer
      p "Incorrect."
    end
  end
end

require "pry"; binding.pry
