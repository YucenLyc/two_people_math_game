class Game 
  attr_reader :game_over, :current_player

  def initialize
    @players = []
    @game_over = false 
    @players[0] = Player.new("p1")
    @players[1] = Player.new("p2")
    @turn = 0 #so the program know when to switch player 
  end 

  def start_game 
    while !game_over do 
      current_player = @players[@turn % 2]
      next_player = @players[(@turn + 1) % 2]

      new_question = Question.new(current_player.name)
      new_question.ask 


      #looking an integer from the user 
      answer = gets.chomp.to_i 
      

      if new_question.check_answer(answer)
      puts "Correct!"
      else 
        current_player.update_life
        puts "Incorrect!"

        if current_player.life == 0 
          puts "#{next_player.name} wins the game with #{next_player.life}/3"

          @game_over = true 
          break
        end 
        end 
        puts "P1: #{@players[0].life}/3 vs P2: #{@players[1].life}/3"
        @turn += 1
      end 

    end 
  end 


  # def game_over?  #method returns a boolean value 
  #   @players.each do |player|
  #     @game_over = true if player.life == 0
  #   end 
  #   @game_over 
  # end 

  # def game_status
  #   puts "#{@players[0].name}: #{@players[0].life}/3 vs #{@players[1].name}: #{@players[1].life}/3}"
  # end 


