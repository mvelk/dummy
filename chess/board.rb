require_relative 'pieces'

class Board
  attr_accessor :rows
  
  def initialize
    @rows = Array.new(8) { Array.new(8) }
    make_starting_grid
  end

  def [](pos)
  end

  def []=(pos, piece)
  end

  def dup
  end

  def move_piece(color, from_pos, to_pos)
  end

  def move_piece!(from_pos, to_pos)
  end

  def checkmate?
  end

  protected
  def make_starting_grid
  end

  def find_king(color)
  end

end
