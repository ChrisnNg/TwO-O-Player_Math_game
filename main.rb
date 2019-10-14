require "./player.rb"


player_1 = Player.new(1)
player_2 = Player.new(2)


while player_1.lives > 0 && player_2.lives > 0

  @num_1 = rand(1...20)
  @num_2 = rand(1...20)

  puts "Player #{player_1.id}: What does #{@num_1} plus #{@num_2} equal?"
  print "> "
  answer = gets.chomp.to_i
  if answer == (@num_1 + @num_2)
    puts "Player #{player_1.id}: YES! You are correct."
  else
    puts "Player #{player_1.id}: Seriously? No!"
    player_1.lives -= 1
  end
  puts "P#{player_1.id}: #{player_1.lives}/3 P#{player_2.id}: #{player_2.lives}/3"

  if  player_1.lives == 0
    puts "Player#{player_2.id} wins with a score of #{player_2.lives}/3"
    puts '----- GAME OVER -----'
    puts 'Good bye!'
    break
  end

  puts '----- NEW TURN -----'

  @num_1 = rand(1...20)
  @num_2 = rand(1...20)

  puts "Player #{player_2.id}: What does #{@num_1} plus #{@num_2} equal?"
  print "> "
  answer = gets.chomp.to_i
  if answer == (@num_1 + @num_2)
    puts "Player #{player_2.id}: YES! You are correct."
  else
    puts "Player #{player_2.id}: Seriously? No!"
    player_2.lives -= 1
  end
  puts "P#{player_1.id}: #{player_1.lives}/3 P#{player_2.id}: #{player_2.lives}/3"

  if  player_2.lives == 0
    puts "Player#{player_1.id} wins with a score of #{player_1.lives}/3"
    puts '----- GAME OVER -----'
    puts 'Good bye!'
    break
  end

  puts '----- NEW TURN -----'

end
