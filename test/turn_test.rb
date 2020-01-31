require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'


class TurnTest < Minitest::Test

  def test_turn_exists
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    assert_instance_of Turn, turn
  end

  def test_if_it_has_guess
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    assert_equal "Juneau", turn.guess
  end

  def test_it_has_card
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    assert_equal card, turn.card
  end

  def test_feedback
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn1 = Turn.new("Juneau", card)
    turn2 = Turn.new("Saturn", card)

    assert_equal "Correct!", turn1.feedback
    assert_equal "Incorrect.", turn2.feedback
  end

  def test_correct?
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn1 = Turn.new("Juneau", card)
    turn2 = Turn.new("Saturn", card)

    assert_equal true, turn1.correct?
    assert_equal false, turn2.correct?
  end

end
