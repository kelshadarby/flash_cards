require './lib/turn'

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
    ((number_correct_by_category(category).to_f)/(@deck.cards_in_category(category).count).to_f)*100
  end

  def start(round)
    @round = round
    card_count = @deck.cards.length

    puts "\n Welcome! You're playing with #{card_count} cards."
    puts "-" * 50 + "\n\n"


    @deck.cards.each do |card|
      puts "This is card number #{(@deck.cards.find_index(card))+1} out of #{card_count}."
      puts "Question: #{@round.current_card.question}"

      new_turn = @round.take_turn(gets.chomp)

      if new_turn.feedback == "Incorrect."
        puts "#{new_turn.feedback}"
        puts "The correct answer is #{new_turn.card.answer} \n\n"
      elsif new_turn.feedback == "Correct!"
        puts "#{new_turn.feedback} \n\n"
      end
    end

    puts "****** Game over! ******\n\n"
    puts "You had #{@round.number_correct} correct guesses out of #{card_count} for a total score of #{@round.percent_correct.round(0)}%.\n\n"

    @deck.cards.each do |card|
        puts "#{card.category} - #{@round.percent_correct_by_category(card.category).round(0)}% correct."
          if card == @deck.cards.last
            print "\n"
          end #if
    end # loop
  end

end
