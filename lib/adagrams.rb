letter_distribution = {
  "A" => 9,
  "B" => 2,
  "C" => 2,
  "D" => 4,
  "E" => 12,	
  "F" => 2,
  "G" => 3,
  "H" => 2,
  "I" => 9,
  "J" => 1,
  "K" => 1,
  "L" => 4,
  "M" => 2,
  "N" => 6,
  "O" => 8,
  "P" => 2,
  "Q" => 1,
  "R" => 6,
  "S" => 4,
  "T" => 6,
  "U" => 4,
  "V" => 2,
  "W" => 2,
  "X" => 1,
  "Y" => 2,
  "Z" => 1
}

# method that returns shuffled hand of 10 tiles according to letter distribution hash
# def draw_letters(letter_distribution)
#   pool = []
#   letter_distribution.map do |letter, tiles|
#     tiles.times do 
#       pool << letter
#     end
#   end
#   pool = pool.shuffle.drop(88)
#   return pool

  
# end


# Testing to see if sorting method will work for second wave
pool = %w[B A D C]
pool = pool.sort

puts "Input a word"
player_word = gets.chomp.upcase
player_array = Array.new(player_word.chars).sort
# player_array = player_array.sort

puts "Are these the same?"
puts player_array
puts pool





# puts "Here is the pool: #{draw_letters(letter_distribution)}"

# def uses_available_letters?


# end



# Two parameters:
# input, the first parameter, describes some input word, and is a string
# letters_in_hand, the second parameter, describes an array of drawn letters in a hand. You can expect this to be an array of ten strings, with each string representing a letter
# Returns either true or false
# Returns true if every letter in the input word is available (in the right quantities) in the letters_in_hand
# Returns false if not; if there is a letter in input that is not present in the letters_in_hand or has too much of compared to the letters_in_hand

















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

