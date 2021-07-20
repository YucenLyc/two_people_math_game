class Question 
  attr_reader :answer

  def initialize(player_name)
    @first_num = rand(1...20)
    @second_num = rand(1...20)
    @answer = @first_num + @second_num
    @player_name = player_name
  end 

  def ask 
    puts " #{@player_name} what does #{@first_num} + #{@second_num} equals to?"
  end 

  def check_answer (answer) #boolean
    answer == @answer
  end 
  
end 
