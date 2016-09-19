class Player
  attr_reader :color

  def intialize(color)
    @color = color
  end

end

class HumanPlayer < Player
  def initialize(color)
    super
  end

  def make_move
  end
end

class ComputerPlayer < Player
  def initialize(color)
    super
  end

  def make_move
  end
end
