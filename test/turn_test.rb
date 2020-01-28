require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'

class TurnTest < Minitest::Test

  def test_it_exists
    turn = Turn.new("")

    assert_instance_of Turn, turn
  end

  def test_it_has_a_question
    turn = Turn.new("")

    assert_equal
  end

end
