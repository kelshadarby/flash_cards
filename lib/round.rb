require './lib/turn'
require './lib/deck'

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
    turn
  end

  def number_correct
      @turns.count do |turn|
        turn.correct?
      end
  end

  def number_correct_by_category(category)
    @turns.count do |turn|
      if turn.card.category == category && turn.correct?
        number_correct
      end
    end
  end

  def percent_correct
    ((number_correct.to_f/@turns.count.to_f)*100).round(1)
  end

  def percent_correct_by_category(category)
    (number_correct_by_category(category).to_i/@round.deck.cards_in_category(category).count.to_i)*100
  end

  def start(round)
    @round = round

    puts "Welcome! You're playing with #{@deck.cards.length} cards."
    puts "-" * 50

    card_index = @deck.cards.length

    @deck.cards.each do |card|
      puts "This is card number  out of #{card_index}."
      puts "Question: #{@round.current_card.question}"

      new_turn = @round.take_turn(gets.chomp)

      puts new_turn.feedback
    end

    puts "****** Game over! ******"
    puts "You had #{@round.number_correct} correct guesses out of #{card_index} for a total score of #{@round.percent_correct.round(0)}%."

  @deck.cards.each do |card|
    puts "#{card.category} - #{@round.percent_correct_by_category(card.category)}% correct."
  end




  end

end
