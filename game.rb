# Game is a math game with players 
# state: player_one, player_two, current_player
# behaviour: 
# - game is set with two players and a current_player of the two which starts off the questions
# - game asks the player the question as a message
# - game displays answer as a message indicating right or wrong
# - game displays the current lives of each player
# - game displays the game over message and announces the winner when one player loses all their lives

class Game 
  attr_accessor :current_player

  def initialize(p1, p2)
    @player_one = p1
    @player_two = p2 
    @current_player = p1
  end

  def ask_question(num1, num2)
    puts "----- NEW TURN -----"
    puts "#{@current_player.name}: What does #{num1} plus #{num2} equal?"
  end

  def display_correct_answer
    puts "#{@current_player.name}: YES! You are correct"
  end

  def display_wrong_answer
    puts "#{@current_player.name}: Seriously? No!"
  end

  def display_lives
    puts "#{@player_one.name}: #{@player_one.lives}/3 vs #{@player_two.name}: #{@player_two.lives}/3"
  end

  def game_over
    puts "#{@current_player.name} wins with a score of #{current_player.lives}/3"
    puts "----- GAME OVER -----"
  end
end