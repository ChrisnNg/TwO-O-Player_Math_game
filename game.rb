
class Game
  attr_accessor :player_1_lives, :player_2_lives

  def initialize(player_1_id, player_2_id, player_1_lives, player_2_lives)
    @player_1_id = player_1_id
    @player_1_lives = player_1_lives
    @player_2_id = player_2_id
    @player_2_lives = player_2_lives
  end


  def life_state
    puts "P#{@player_1_id}: #{@player_1_lives}/3 P#{@player_2_id}: #{@player_2_lives}/3"
  end

  def game_over?
    if  @player_1_lives == 0
      puts "Player#{@player_2_id} wins with a score of #{@player_2_lives}/3"
      puts '----- GAME OVER -----'
      puts 'Good bye!'
      true
    else   puts '----- NEW TURN -----'
    end
  end

  
end