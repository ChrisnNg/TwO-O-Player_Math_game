require "./player.rb"
require "./questions.rb"
# require "./game.rb"

player_1 = Player.new(1)
player_2 = Player.new(2)


while player_1.lives > 0 && player_2.lives > 0



  @num_1 = rand(1...20)
  @num_2 = rand(1...20)

  q1 = Question.new(player_1, @num_1, @num_2)
  player_1.lives = q1.print_question


  puts "P#{player_1.id}: #{player_1.lives}/3 P#{player_2.id}: #{player_2.lives}/3"

  if  player_1.lives == 0
    puts "Player#{player_2.id} wins with a score of #{player_2.lives}/3"
    puts '----- GAME OVER -----'
    puts 'Good bye!'
    break

  else   puts '----- NEW TURN -----'
  end

  @num_1 = rand(1...20)
  @num_2 = rand(1...20)

  q2 = Question.new(player_2, @num_1, @num_2)
  player_2.lives = q2.print_question

  puts "P#{player_1.id}: #{player_1.lives}/3 P#{player_2.id}: #{player_2.lives}/3"

  if  player_2.lives == 0
    puts "Player#{player_1.id} wins with a score of #{player_1.lives}/3"
    puts '----- GAME OVER -----'
    puts 'Good bye!'
    break
  
  else   puts '----- NEW TURN -----'
  end

end
