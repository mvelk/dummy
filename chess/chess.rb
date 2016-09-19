require_relative 'board'
require_relative 'display'
require_relative 'player'

class Chess
  attr_accessor :current_player
  
  def initialize(color)
    @current_player = color
  end

  def play
  end

  private
  def notify_players
  end

  def swap_turn!
  end

end
