play = "Y"

def play_game
 puts "weeee we're playing!"





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

