
$LETTERS = {
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

# Wave 1
# method that returns shuffled hand of 10 tiles according to letter distribution hash
def draw_letters
  pool = []
  $LETTERS.map do |letter, tiles|
    tiles.times do 
      pool << letter
    end
  end
  pool = pool.shuffle.drop(88)
  return pool
end

# Wave 2
# method that returns true if every letter in the input word is available in correct quantities

def uses_available_letters?(input, letters_in_hand)
  input_array = Array.new(input.chars)

  input_array.map do |letter|
    puts "The letter is #{letter}"
    if letters_in_hand.index(letter) != nil
      puts "Found the letter!"
      puts "Here is the index: #{letters_in_hand.index(letter)}"
    else
      puts "Letter not found"
    end
  end
end

my_letters = draw_letters
puts "Here are my letters: #{my_letters}"
puts uses_available_letters?("A", my_letters)




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

