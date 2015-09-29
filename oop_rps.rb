# Rock Paper Scissors Game using methods and global variables

# Establish variables for the program

@weapons = [{initial: "R", name: "Rock"}, {initial: "P", name: "Paper"}, {initial: "S", name: "Scissors"}]
@player_weapon = "x"
@computer_weapon = "y"

# Create methods for all game actions

def choose_weapon
  puts
  puts "Choose your weapon: "
  puts "R) Rock" 
  puts "P) Paper"
  puts "S) Scissors"
end

def select_computer_weapon
  @computer_weapon = @weapons.sample
  puts "The Computer has chosen: #{@computer_weapon[:name]}."
end #select_computer_weapon

def convert_player_weapon_to_word
  @weapons.each do |w|
    if w[:initial] == @player_weapon
      @player_weapon = w[:name] 
    end #if
  end #each
  @player_weapon
end #convert_player_weapon_to_word

def evaluate_winner
  if @player_weapon == @computer_weapon[:initial]
    puts "It's a tie!"
  elsif @player_weapon == "R" && @computer_weapon[:initial] == "S" || @player_weapon == "S" && @computer_weapon[:initial] == "P" || @player_weapon == "P" && @computer_weapon[:initial] == "R"
    convert_player_weapon_to_word
    puts "#{@player_weapon} beats #{@computer_weapon[:name]}."
    puts "You win!"  
  else
    convert_player_weapon_to_word
    puts "#{@computer_weapon[:name]} beats #{@player_weapon}."
    puts "Computer wins!" 
  end#if
end #evaluate_winner

def play_game
  choose_weapon
  @player_weapon = gets.chomp.to_s.upcase!
  select_computer_weapon
  evaluate_winner
end #play_game


# =========== GAME PLAY LOOP ==================
play_choice = "Y"
play_game

puts "Want to play again? Y | N"
play_choice = gets.chomp.upcase

while play_choice.include? "Y"
  play_game
  puts "Want to play again? Y | N"
  play_choice = gets.chomp.upcase
end
puts "Alright. Off you go."

