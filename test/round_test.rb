require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

class RoundTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    assert_instance_of Round, round
  end

  def test_it_can_return_deck
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    assert_equal deck, round.deck
  end

  def test_it_has_turns
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    assert_equal [], round.turns

    # Test with a turn
    new_turn = round.take_turn("Juneau")

    assert_equal [new_turn], round.turns

    # Test for another turn
    new_turn2 = round.take_turn("Venus")

    assert_equal [new_turn, new_turn2], round.turns
  end


  def test_it_can_tell_current_card
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    assert_equal card_1, round.current_card

    # Test with a turn
    new_turn = round.take_turn("Juneau")

    assert_equal card_2, round.current_card

    # Test for another turn
    new_turn2 = round.take_turn("Venus")

    assert_equal card_3, round.current_card
  end

  def test_it_can_take_turn
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    new_turn = round.take_turn("Juneau")

    assert_instance_of Turn, new_turn
  end

  def test_new_turn_is_in_turn_class
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    new_turn = round.take_turn("Juneau")

    assert_equal Turn, new_turn.class
  end

  def test_new_turn_can_call_correct
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    new_turn = round.take_turn("Juneau")

    assert_equal true, new_turn.correct?

    # Test for another turn
    new_turn2 = round.take_turn("Venus")

    assert_equal false, new_turn2.correct?
  end

  def test_it_can_return_turns
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    new_turn = round.take_turn("Juneau")

    assert_equal [new_turn], round.turns

    # Test for another turn
    new_turn2 = round.take_turn("Venus")

    assert_equal [new_turn, new_turn2], round.turns
  end

  def test_it_can_tell_number_correct
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    new_turn = round.take_turn("Juneau")

    assert_equal 1, round.number_correct

    # Test for another turn
    new_turn2 = round.take_turn("Venus")

    assert_equal 1, round.number_correct
  end

  def test_it_can_return_feedback
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    new_turn = round.take_turn("Juneau")
    new_turn2 = round.take_turn("Venus")

    assert_equal "Incorrect.", round.turns.last.feedback

    # Test for another turn
    new_turn3 = round.take_turn("North north west")

    assert_equal "Correct!", round.turns.last.feedback
  end

  def test_it_can_tell_number_correct_by_category
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    new_turn = round.take_turn("Juneau")

    assert_equal 1, round.number_correct_by_category(:Geography)
    assert_equal 0, round.number_correct_by_category(:STEM)

    # Test for another turn
    new_turn2 = round.take_turn("Venus")

    assert_equal 0, round.number_correct_by_category(:STEM)
  end

  def test_percent_correct
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    new_turn = round.take_turn("Juneau")
    new_turn2 = round.take_turn("Venus")

    assert_equal 50.0, round.percent_correct

    # Test for another turn
    new_turn3 = round.take_turn("North west")

    assert_equal 33.3, round.percent_correct
  end

  def test_percent_correct_by_category
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    new_turn = round.take_turn("Juneau")
    new_turn2 = round.take_turn("Venus")

    assert_equal 100.0, round.percent_correct_by_category(:Geography)
    assert_equal 0.0, round.percent_correct_by_category(:STEM)

    # Test for another turn
    new_turn3 = round.take_turn("North north west")

    assert_equal 50.0, round.percent_correct_by_category(:STEM)
  end

end
