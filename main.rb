# This is the main entrypoint into the program 
# Requires other files/gems that it needs
require './player'
require './question'
require './game'

# Players enter their names
puts "Enter Player 1: "
player_one = Player.new(gets.chomp)
puts "Enter Player 2: "
player_two = Player.new(gets.chomp)

# Game is started 
game = Game.new(player_one, player_two)

# loops until the current player is out of lives
loop do 
  question = Question.new
  game.ask_question(question.number_one, question.number_two)
  answer = gets.chomp

  if question.answer?(answer) 
    game.display_correct_answer
  else 
    game.display_wrong_answer
    game.current_player.lose_life
    if game.current_player.lives == 0
      game.current_player = (game.current_player == player_one ? player_two : player_one) 
      break
    end
  end
  game.display_lives
  game.current_player = (game.current_player == player_one ? player_two : player_one) 
end

game.game_over



