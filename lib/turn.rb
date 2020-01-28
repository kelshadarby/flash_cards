class Turn

  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def guess
    p @guess
  end

  def card
    p @card
  end

  def correct?
    if @guess == @answer
      p true
    elsif @guess != @answer
      p false
    end
  end

  def feedback
    if @guess == @answer
      p "Correct!"
    elsif @guess != @answer
      p "Incorrect."
    end
  end
end
