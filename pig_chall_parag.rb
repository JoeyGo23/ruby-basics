## Encodes variable "word" and creates new word
def encode word
  if word.start_with?("a", "e", "i", "o", "u")
   print word + "ay "
 else
  word_length = word.length
  new_word = word[1..word_length] + word[0]
  print new_word + "ay "
end
end

##input
puts "Welcome to the Pig Latin Translator!\n \nPlease enter a phrase below to translate!"

sentence = gets.chomp.downcase

#takes sentence and creates array
words = sentence.split

#defines array and sends it back up to encode method
words.each do |word|
 encode word
end