class Question 

  def initialize(player, num1, num2)
  @player_id = player.id
  @player_lives = player.lives
  @num_1 = num1
  @num_2 = num2
  end

  def print_question
    puts "Player #{@player_id}: What does #{@num_1} plus #{@num_2} equal?"
    print "> "
    answer = gets.chomp.to_i
    if answer == (@num_1 + @num_2)
      puts "Player #{@player_id}: YES! You are correct."
      @player_lives
    else
      puts "Player #{@player_id}: Seriously? No!"
      @player_lives -= 1
    end

  end

end