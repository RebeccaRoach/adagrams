letter_distribution = {
  "A" => 9,
  "B" => 2,
  "C" => 2,
  "D" => 4,
  "E" => 1,	
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

#puts letter_distribution.values_at("R")
# first stage of draw_letters

def draw_letters(letter_distribution)
  pool = []
  letter_distribution.map do |letter, tiles|

    tiles.times do 
      pool << letter
    end
  end
  return pool
end


p draw_letters(letter_distribution)