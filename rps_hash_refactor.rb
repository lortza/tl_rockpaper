#WORK IN PROGRESS
# my favorite solution: https://www.gotealeaf.com/gists/c4809d95
# most like my solution: https://www.gotealeaf.com/gists/fc72ed02


#pseudocode:
#1. establish available weapons: rock, paper, scissors
#2. establish win / lose / tie combonations: r > s, s > p, p > r
#3. get user weapon choice
#4. get computer weapon choice
#5. evaluate outcome from user p.o.v.
#6. announce winner
#7. offer to play again

WEAPONS = {"R" => "Rock", "P" => "Rock", "S" => "Scissors"}


play = "Y"


def choose_weapon
  puts
  puts "Choose your weapon: "
  puts "R) Rock" 
  puts "P) Paper"
  puts "S) Scissors"
end

def play_game
  choose_weapon
  user_choice = gets.chomp
  logic = WEAPONS.keys.include?(user_choice.upcase)

  while logic == false
    puts "I'm sorry, your selection was not valid."
    choose_weapon
    user_choice = gets.chomp
    logic = WEAPONS.keys.include?(user_choice.upcase)
  end#while
  
  computer_choice = WEAPONS.values.sample
  puts "Your #{your_choice.upcase} v.s. my #{computer_choice.upcase}..."
  sleep(1)

  if (your_choice == "Rock") && (computer_choice == "Rock")
    puts "It's a TIE!"
  elsif (your_choice == "Rock") && (computer_choice == "Paper")
    puts "You Lose!"
  elsif (your_choice == "Rock") && (computer_choice == "Scissors")
    rock
    puts "You Win!"
  elsif (your_choice == "Paper") && (computer_choice == "Rock")
    paper
    puts "You Win!"  
  elsif (your_choice == "Paper") && (computer_choice == "Paper")
    puts "It's a TIE!"
  elsif (your_choice == "Paper") && (computer_choice == "Scissors")
    puts "You Lose!"
  elsif (your_choice == "Scissors") && (computer_choice == "Rock")
    puts "You Lose!"  
  elsif (your_choice == "Scissors") && (computer_choice == "Paper")
    scissors
    puts "You Win!"
  elsif (your_choice == "Scissors") && (computer_choice == "Scissors")
    puts "It's a TIE!"
  end #if
end #play_game

title = "Play Rock, Paper, Scissors!"
maxlength = title.length.to_i + 6
puts "\n"
puts "~" * maxlength
puts title.upcase.center(maxlength)
puts "~" * maxlength
puts "\n"

puts "RULES:"
puts "Rock beats Scissors"
puts "Paper beats Rock"
puts "Scissors beats Paper"
play_game
puts
puts "Play Again?  Y / N"
play = gets.chomp

while play.upcase.include? "Y"
  play_game
  puts "Play Again?  Y / N"
  play = gets.chomp
end

puts "Okay bye"

