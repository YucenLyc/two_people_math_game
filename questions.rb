class Questions 
  attr_reader :answer 

  def initialize
    @answer = answer 
  end 

  def generate_question 
    number = Random.new 
    first_num = num.rand(100)
    second_num = num.rand(100)
    answer = first_num + second_num
    puts "what does #{first_num} + #{second_num} equals to?"
  end 
  
end 
