
# $LETTERS = {
#   "A" => 9,
#   "B" => 2,
#   "C" => 2,
#   "D" => 4,
#   "E" => 12,	
#   "F" => 2,
#   "G" => 3,
#   "H" => 2,
#   "I" => 9,
#   "J" => 1,
#   "K" => 1,
#   "L" => 4,
#   "M" => 2,
#   "N" => 6,
#   "O" => 8,
#   "P" => 2,
#   "Q" => 1,
#   "R" => 6,
#   "S" => 4,
#   "T" => 6,
#   "U" => 4,
#   "V" => 2,
#   "W" => 2,
#   "X" => 1,
#   "Y" => 2,
#   "Z" => 1
# }

# # Wave 1
# # method that returns shuffled hand of 10 tiles according to letter distribution hash
# def draw_letters
#   pool = []
#   $LETTERS.map do |letter, tiles|
#     tiles.times do 
#       pool << letter
#     end
#   end
#   pool = pool.shuffle.drop(88)
#   return pool
# end

# # Wave 2
# # method that returns true if every letter in the input word is available in correct quantities
# def uses_available_letters?(input, letters_in_hand)
#   input_array = Array.new(input.chars)
#   current_hand = Array.new(letters_in_hand)
#   input_array.map do |letter|
#     puts "The letter is #{letter}"
#     if current_hand.index(letter) != nil
#       puts "Found the letter!"
#       puts "Here is the index: #{current_hand.index(letter)}"
#       current_hand.delete_at(current_hand.index(letter))
#       puts "Here is the array now: #{current_hand}"
#     else
#       return false
#     end
#   end
#   return true
# end

# my_letters = draw_letters
# puts "Here are my letters: #{my_letters}"
# puts uses_available_letters?("EAIIIIIAAARR", my_letters)

# Wave 3
# Method that calculates word score according to Adagrams rules

$LETTER_VALUES = {
  "A" => 1,	
  "B" => 3,	
  "C" => 3,	
  "D" => 2,	
  "E" => 1,	
  "F" => 4,
  "G" => 2,	
  "H" => 4,	
  "I" => 1,	
  "J" => 8,	
  "K" => 5,	
  "L" => 1,	
  "M" => 3,	
  "N" => 1,
  "O" => 1,
  "P" => 3,
  "Q" => 10,
  "R" => 1,
  "S" => 1,
  "T" => 1,
  "U" => 1,
  "V" => 4,
  "W" => 4,
  "X" => 8,
  "Y" => 4,
  "Z" => 10
}

def score_word(word)
  total_points = 0
  word_array = Array.new(word.upcase.chars)
  points = word_array.map do |char|
    $LETTER_VALUES.fetch_values(char)
  end
  total_points = points.flatten.sum
  if word_array.length >= 7
    total_points += 8
  end
  return total_points
end



# Wave 4
# We want a way to find the highest scoring word.
# This method looks at the array of words and calculates which of these words has the highest score, applies any tie-breaking logic, and returns the winning word in a special data structure.

# Has one parameter: words, which is an array of strings
# Returns a single hash that represents the data of a winning word and its score. The hash should have the following keys:
# :word, whose value is a string of a word
# :score, whose value is the score of that word
# In the case of tie in scores, use these tie-breaking rules:
# prefer the word with the fewest letters...
# ...unless one word has 10 letters. If the top score is tied between multiple words and one is 10 letters long, choose the one with 10 letters over the one with fewer tiles
# If the there are multiple words that are the same score and the same length, pick the first one in the supplied list

words = %w[shonda becca cat dog]

def highest_score_from(words)
  scores = []
  all_words = []
  highest_word = ""
  our_hash = {}

  words.each do |word|
    #scores << score_word(word)
    #scores.map do |score|
    our_hash[:word] = word
    our_hash[:score] = score_word(word)
    all_words << our_hash
    #our_hash = Hash[words.zip(scores)]
    
  end

  puts "Our_hash: #{all_words}"
  #puts "Winning_words: #{winning_words}"
end 
highest_score_from(words)


    

    # scores.each do |score|
    #   scores << {score: score}
    # end

  #   highest_word = scores.max
  #   our_hash = Hash[words.zip(scores)]
  #  our_hash[:score]


# winner = {
#   word: "Shonda",
#   score: 10
# }

# highest_word = scores.max









# NOT WORKING CODE:
# puts word_array
# puts "B: #{letter_values[:B]}"

# letter_values.map do |letter, val|
#   char_value = 0

  # word_array.map do |char|
  #   sum = 0
  #   puts "The first sum is: #{sum}"
  #   letter_values.map do |letter, value|
  #     letter = letter.to_s
  #     puts "Letter: #{letter} ; value: #{value}"
  #     if letter == char
  #       puts "The char and letter are the same!"
  #       puts "Curr val is: #{value}"
  #       sum = sum + value
  #     else
  #       puts "Not the same"
  #     end
  #   end
  #   return sum
  # end


# try switching loop order
# sum = 0
#   letter_values.map do |letter, value|
#     letter = letter.to_s
#     puts "The first sum is: #{sum}"
#     word_array.map do |char|
#       puts "Letter: #{letter} ; value: #{value}"
#       if letter == char
#         puts "The char and letter are the same!"
#         puts "Curr val is: #{value}"
#         sum += value
#       else
#         puts "Not the same"
#       end
#       puts "Sum is: #{sum}"
#     end
#     return sum
#   end

# distro_of_letters = {
#   "A": 9,	
#   "B": 2,	
#   "C": 2,	
#   "D": 4,	
#   "E": 12,	
#   "F": 2,
#   "G": 3,	
#   "H": 2,	
#   "I": 9,	
#   "J": 1,	
#   "K": 1,	
#   "L": 4,	
#   "M": 2,	
#   "N": 6,
#   "O": 8,
#   "P": 2,
#   "Q": 1,
#   "R": 6,
#   "S": 4,
#   "T": 6,
#   "U": 4,
#   "V": 2,
#   "W": 2,
#   "X": 1,
#   "Y": 2,
#   "Z": 1
# }

# def draw_letters (distro_of_letters)
# # creates a new array filled with each alphabet letter based on distrbution of letters
#   letter_pool = []
#   distro_of_letters.each do |letters,tiles|
#       tiles.times do 
#         letter_pool << letters
#       end
#   end
# # loops through the shuffled letter pool named "deck"

# puts "Here is your hand: "
#   9.times do
#     deck = letter_pool.shuffle 
#   #used to create a random index value to select index of the letter position in "deck"
#     selector = rand(0...97)
#     print deck[selector]
    
#   end
# end

# draw_letters(distro_of_letters)

