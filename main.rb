require "./player.rb"
require "./questions.rb"
require "./game.rb"

player_1 = Player.new(1)
player_2 = Player.new(2)

game = Game.new(player_1.id, player_2.id, player_1.lives, player_2.lives)

while player_1.lives > 0 && player_2.lives > 0

  q1 = Question.new(player_1)
  game.player_1_lives += q1.print_question
  game.life_state
  if game.game_over?
    break
  end

  q2 = Question.new(player_2)
  game.player_2_lives += q2.print_question
  game.life_state
  if game.game_over?
    break
  end

end
