# CHALLENGES:
#
# Can you simulate a hand of blackjack?
#
# 1. Randomly choose two cards from a standard deck of 52 cards.
# HINT: Don't worry about the suits.  Just the card value/face matters.
# HINT: Arrays have a #sample method that can (optionally) accept a parameter.
#
# Example Output #1:
# 5 8
#
# Example Output #2:
# Q 6
#
# Example Output #3:
# 2 A
deck = ["A","K","Q","J","10","9","8","7","6","5","4","3","2"] * 4
points = {"A"=>11,"K"=>10,"Q"=>10,"J"=>10,"10"=>10,"9"=>9,"8"=>8,"7"=>7,"6"=>6,"5"=>5,"4"=>4,"3"=>3,"2"=>2}

hand = deck.sample(2)

puts "--- 2 random cards from 52 card deck  ---------------------------"
puts hand
puts "---------------------------------------------------------------------------"




# 2. Enhance #1 by showing the total score.
# HINT: Consider all aces to have a value of 11.
# Example Output #1:
#
# 5 8
# You have 13.
#
# Example Output #2:
# Q 6
# You have 16.
#
# Example Output #3:
# 2 A
# You have 13.


deck = ["A","K","Q","J","10","9","8","7","6","5","4","3","2"] * 4
points = {"A"=>11,"K"=>10,"Q"=>10,"J"=>10,"10"=>10,"9"=>9,"8"=>8,"7"=>7,"6"=>6,"5"=>5,"4"=>4,"3"=>3,"2"=>2}

hand = deck.sample(2)
score = 0


hand.each do |card|
	score += points[card]
end

puts "You are holding - #{hand.join(",")}  Score is #{score}"









# 3. Enhance #2 by adding a card if the score is less than 17.
# Example Output #1:
# 2 A 6
# You have 19.

# Example Output #1:
# Q A
# You have 20.

deck = ["A","K","Q","J","10","9","8","7","6","5","4","3","2"] * 4
points = {"A"=>11,"K"=>10,"Q"=>10,"J"=>10,"10"=>10,"9"=>9,"8"=>8,"7"=>7,"6"=>6,"5"=>5,"4"=>4,"3"=>3,"2"=>2}

hand = deck.sample(2)
score = 0


hand.each do |card|
	score += points[card]
end


if score < 17
	puts "score is #{score} - LESS than 17"
	extra_card = deck.sample
	hand << extra_card
	score += points[extra_card]
end

puts "You are holding - #{hand.join(",")}  Score is #{score}"

# 4. Enhance #3 by displaying a message if the score is over 21.
# Example Output #1:
# 7 A 6
# You have 24.
# You're busted!







# 5. Enhance #4 by considering an Ace to be 1 if it would prevent
# the total score from going over 21.
# Example Output #1:
# 4 A 9
# You have 14.
