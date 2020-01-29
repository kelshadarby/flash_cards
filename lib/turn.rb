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

  def correct?
    @guess == @card.answer
  end

  def feedback
    if @guess == @card.answer
      p "Correct!"
    elsif @guess != @card.answer
      p "Incorrect."
    end
  end
end

# require "pry"; binding.pry
