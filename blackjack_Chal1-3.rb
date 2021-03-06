# 4. Enhance #3 by displaying a message if the score is over 21.
# Example Output #1:
# 7 A 6
# You have 24.
# You're busted!


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

elsif score > 21
	puts "score is #{score} - GREATER than 21"
	puts "B U S T E D"
end

puts "Chal 4"
puts "You are holding - #{hand.join(",")}  Score is #{score}"





# 5. Enhance #4 by considering an Ace to be 1 if it would prevent
# the total score from going over 21.
# Example Output #1:
# 4 A 9
# You have 14.
