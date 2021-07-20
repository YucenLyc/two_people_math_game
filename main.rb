require_relative './players.rb'
require_relative './questions.rb'
require_relative './game.rb'

# players = [
#   Player.new("1"),
#   Player.new("2")
# ]

game = Game.new
game.start_game

# while (!game.game_over?)

#   puts "\n -------NEW TURN--------"

#   questions = Questions.new
#   puts "#{game.current_player.name}: #{questions.question}"

#   answer = gets.chomp
#   if question.check? answer 
#     puts "#{game.current_player.name}: YES! You Are Correct!"
#   else 
#     puts "#{game.current_player.name}: Seriously? NO!!!"
#     game.current_player.update_life
#   end 

#   game.game_status
# end 

# puts "\n-------GAME OVER-------"
# puts "#{game.current_player.name} wins with a score of #{game.curent_player.life}/3"
# puts "GOODBYE!"