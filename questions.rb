class Question 

  def initialize(player)
  @player_id = player.id
  @player_lives = player.lives
  @num_1 = rand(1...20)
  @num_2 = rand(1...20)
  end

  def print_question
    puts "Player #{@player_id}: What does #{@num_1} plus #{@num_2} equal?"
    print "> "
    answer = gets.chomp.to_i
    if answer == (@num_1 + @num_2)
      puts "Player #{@player_id}: YES! You are correct."
      0
    else
      puts "Player #{@player_id}: Seriously? No!"
      -1
    end

  end

end