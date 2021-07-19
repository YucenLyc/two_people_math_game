class Player 
  attr_accessor :life_score 
  attr_reader :name 

  def initialize(name)
    @name = name 
    @life = 3
  end
end 

