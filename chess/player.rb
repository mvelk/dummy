require_relative 'computer_player'
require_relative 'human_player'

class Player
  attr_reader :color

  def intialize(color)
    @color = color
  end

end
