require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

card1 = Card.new(
  "Which planet has the most gravity?",
  "Jupiter",
  :STEM)
card2 = Card.new(
  "Which country invented tea?",
  "China",
  :Sustenance)
card3 = Card.new(
  "What was Owl City's first band name?",
  "Sky Sailing",
  :Music)
card4 = Card.new(
  "What is the smallest mammal in the world?",
  "Bumblebee Bat",
  :Animals)
card5 = Card.new(
  "What was the first feature-length animated movie ever released?",
  "Snow White and the Seven Dwarfs",
  :Movies)

deck1 = Deck.new([card1, card2, card3, card4, card5])
round1 = Round.new(deck1)




# if turn1.card == round.current_card
#   puts deck.cards.index(turn1.card)+1
# end

# card_index = deck.cards.map do |card|
#   deck.cards.index(card)+1
# end

# puts card_index.rotate!
# puts (deck.cards.index(round.current_card))+1
#
# puts "Question: #{round.current_card.question}?"
# new_turn = round.take_turn("Juneau")
# puts round.current_card.question

# puts round.current_card
# new_turn2 = round.take_turn("China")
# require "pry"; binding.pry

round1.start(round1)




# Start the round using a new method called start
# Keep in mind that your existing objects should already contain, more or less,
# the data and methods needed to manage this process. Your challenge in this
# iteration is to build out the input/output messaging to support the user’s card
# experience using your existing pieces to store and manage all the necessary data.
#
# This is card number 1 out of 4.
# Question: What is 5 + 5?
# Then a user will be able to type in a guess, in this case 10, and hit enter to move the game play forward.
#
# 10
# Correct!
# This is card number 2 out of 4.
# Question: What is Rachel's favorite animal?
# The game will continue until all the Cards in the Deck have had a guess made against them (until you have completed as many Turns as you have Cards in the Deck).
#
# panda
# Incorrect.
# This is card number 3 out of 4.
# Question: What is Mike's middle name?
# nobody knows
# Correct!
# This is card number 4 out of 4.
# Question: What cardboard cutout lives at Turing?
# Justin Bieber
# Correct!
# When all the Turns have been made, the game will end and will present the user with a final score.
#
# ****** Game over! ******
# You had 3 correct guesses out of 4 for a total score of 75%.
# STEM - 100% correct
# Turing Staff - 50% correct
# Pop Culture - 100% correct
# Seen together, the CLI will look something like this when the game is over:
#
# Welcome! You're playing with 4 cards.
# -------------------------------------------------
# This is card number 1 out of 4.
# Question: What is 5 + 5?
# 10
# Correct!
# This is card number 2 out of 4.
# Question: What is Rachel's favorite animal?
# panda
# Incorrect.
# This is card number 3 out of 4.
# Question: What is Mike's middle name?
# nobody knows
# Correct!
# This is card number 4 out of 4.
# Question: What cardboard cutout lives at Turing?
# Justin Bieber
# Correct!
# ****** Game over! ******
# You had 3 correct guesses out of 4 for a total score of 75%.
# STEM - 100% correct
# Turing Staff - 50% correct
# Pop Culture - 100% correct
