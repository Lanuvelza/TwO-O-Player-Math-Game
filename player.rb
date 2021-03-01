# Player class defines an instance of a player 
# state: name, lives 
# behaviour: 
# - player is set with a name and set number of lives (3)
# - a player can lose a life

class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3 
  end

  def lose_life 
    @lives -= 1
  end
end
