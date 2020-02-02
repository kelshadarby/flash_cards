require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test

  def test_it_exists_and_can_return_attributes
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)

    assert_instance_of Card, card

    assert_equal "What is the capital of Alaska?", card.question
    assert_equal "Juneau", card.answer
    assert_equal :Geography, card.category

    assert_equal "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", card_2.question
    assert_equal "Mars", card_2.answer
    assert_equal :STEM, card_2.category
  end
end
