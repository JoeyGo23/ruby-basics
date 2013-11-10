# PIG LATIN CHALLENGE

# For this challenge, you'll need to encode sentences into pig latin, and also decode them.

# You'll need to write two methods: one to encode, and one to decode.

# Examples:

# "ruby rules" becomes "ubyray ulesray"
# "go blackhawks" becomes "ogay lackhawksbay"
# "apples are happy fruit" becomes "applesay areay appyhay ruitfay"

# Encoding rules are widely debated, so here are some simple ones to get us started:

# 1. If a word starts with a consonant, move it to the end of the word, and then add "ay"
# 2. If a word starts with a vowel, simply add "ay" to the end of the word.

# After you can encode, try to decode!

# ----------------------------------------------------

# If you want to get fancy, try one or more of these:

# 3. If a word starts with a consonant cluster, like "challenge", move the cluster: "allengechay"
# 4. If a word starts with a Y, consider it to be a consonant, but all other Ys are vowels.
# 5. The entire rulebook at http://en.wikipedia.org/wiki/Pig_Latin#Rules

# Here are some sentences to get you started:

# address = "Four score and seven years ago our fathers brought forth on this continent a new nation, conceived in liberty, and dedicated to the proposition that all men are created equal."
# ruby = "Ruby gives us lots of data containers to choose from"

# oodgay ucklay!

puts "Enter a word or a phrase to be encoded in Pig Latin:"
phrase = gets.downcase.chomp

# List words contained in the phrase
words = phrase.split(" ")

pig_latin = ""
words.each do |word|
  if word.index(/[aeiou]/) != 0                         # If a word starts with a consonant, move it to the end of the word, and then add "ay"
    pig_latin << word.slice!(1..-1) + word[0] + "ay "
  else
    pig_latin << word + "ay "                           # If a word starts with a vowel, simply add "ay" to the end of the word.
  end
end

puts "Pig Latin translation: #{pig_latin}"