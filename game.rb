class Game 
  attr_reader :players, :game_over, :current_player

  def initialize
    @players = players
    @game_over = false 
    @current_player = @palyers[0]
  end 

  def game_over 
    @players.each do |player|
      @game_over = true if player.life == 0
    end 
    @game_over 
  end 

  def game_status
    puts "#{@players[0].name}: #{@players[0].life}/3 vs #{@players[1].name}: #{@players[1].life}/3}"
  end 
end 
