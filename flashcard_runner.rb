require './lib/card'
require './lib/deck'
require './lib/round'

card1 = Card.new(
  "Which planet has the most gravity?",
  "Jupiter",
  :STEM
)
card2 = Card.new(
  "Which country invented tea?",
  "China",
  :Sustenance
)
card3 = Card.new(
  "Lady Gaga derived her stage name from a song performed by which legendary band?",
  "Queen",
  :Music
)
card4 = Card.new(
  "What was Owl City's first band name?",
  "Sky Sailing",
  :Music
)
card5 = Card.new(
  "What is the smallest mammal in the world?",
  "Bumblebee Bat",
  :Animals
)
card6 = Card.new("How high can whitetail deer jump?",
  "10ft",
  :Animals
)
card7 = Card.new("How many possible Quidditch fouls are there?",
  "700",
  :Movies
)
card8 = Card.new(
  "What was the first feature-length animated movie ever released?",
  "Snow White and the Seven Dwarfs",
  :Movies
)

deck = Deck.new([card1, card2, card3, card4, card5, card6, card7, card8])
round = Round.new(deck)

round.start(round)
