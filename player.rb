class Player
  attr_reader :id, :lives
  attr_writer :lives
  def initialize(id)
    @id = id
    @lives = 3
  end

end