require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn' #true
require './lib/card' #true


class TurnTest < Minitest::Test

  attr_reader

  def test_card_exists
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    assert_instance_of Card, card
  end

  def test_turn_exists
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    assert_instance_of Turn, turn
  end

  def test_if_guess_is_correct
    
  end
end

require "pry"; binding.pry





# pry(main)> card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
# #=> #<Card:0x00007f800e29f0c8 @question=""What is the capital of Alaska?", @answer="Juneau", @category=:Geography>
#
# pry(main)> turn = Turn.new("Juneau", card)
# #=> #<Turn:0x00007f99842f0998 @card=#<Card:0x00007f800e29f0c9 @question=""What is the capital of Alaska?", @answer="Juneau", @guess="Juneau">
#
# pry(main)> turn.card
# #=> #<Card:0x00007f800e29f0c8 @question=""What is the capital of Alaska?", @answer="Juneau", @category=:Geography>
#
# pry(main)> turn.guess
# #=> "Juneau"
#
# pry(main)> turn.correct?
# #=> true
#
# pry(main)> turn.feedback
# #=> "Correct!"
