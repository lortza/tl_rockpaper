play = "Y"


def rock
  my_str = <<-art
  ___ __  __   _   ___ _  _ _ 
 / __|  \/  | /_\ / __| || | |
 \__ \ |\/| |/ _ \\__ \ __ |_|
 |___/_|  |_/_/ \_\___/_||_(_)
                                                          
  art
  puts my_str
  puts "Rock smashes Scissors!"
end

def paper
  my_str = <<-art
  ___ __  __   _   ___ _  ___ 
 / __|  \/  | /_\ / __| |/ / |
 \__ \ |\/| |/ _ \ (__| ' <|_|
 |___/_|  |_/_/ \_\___|_|\_(_)                            
  art
  puts my_str
  puts "Paper wraps Rock!"
end

def scissors
  my_str = <<-art
  ___ _      _   ___ _  _ _ 
 / __| |    /_\ / __| || | |
 \__ \ |__ / _ \\__ \ __ |_|
 |___/____/_/ \_\___/_||_(_)                          
  art
  puts my_str
  puts "Scissors cut Paper!"
end

def choose_weapon
  puts
  puts "Choose your weapon: "
  puts "R) Rock" 
  puts "P) Paper"
  puts "S) Scissors"
end

def play_game
  weapons = ["Rock", "Paper", "Scissors"]
  choose_weapon
  weapon_choice = gets.chomp
  your_choice = "X"
  if weapon_choice.capitalize.include? "R"
    your_choice = "Rock"
  elsif weapon_choice.capitalize.include? "P"
    your_choice = "Paper"
  elsif weapon_choice.capitalize.include? "S"
    your_choice = "Scissors"
  else
    puts "That was not a valid choice, silly."
  end#if
  computer_choice = weapons.sample
  puts "Your #{your_choice.upcase} v.s. my #{computer_choice.upcase}..."






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

puts "Play Again?  Y / N"
play = gets.chomp

while play.upcase.include? "Y"
  play_game
  puts "Play Again?  Y / N"
  play = gets.chomp
end

puts "Okay bye"

