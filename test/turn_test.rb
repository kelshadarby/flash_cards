require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'


class TurnTest < Minitest::Test

  def test_it_exists_and_can_return_attributes
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    turn_2 = Turn.new("Venus", card_2)

    assert_instance_of Turn, turn

    assert_equal "Juneau", turn.guess
    assert_equal card, turn.card

    assert_equal "Venus", turn_2.guess
    assert_equal card_2, turn_2.card
  end

  def test_feedback_and_correct?
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    turn_2 = Turn.new("Saturn", card)

    assert_equal "Correct!", turn.feedback
    assert_equal "Incorrect.", turn_2.feedback

    assert_equal true, turn.correct?
    assert_equal false, turn_2.correct?
  end
end
