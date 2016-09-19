require_relative 'king'
require_relative 'queen'
require_relative 'knight'
require_relative 'bishop'
require_relative 'rook'
require_relative 'pawn'
require_relative 'slideable'
require_relative 'stepable'

class Piece
  attr_accessor :color, :pos, :board

  def initialize(color, pos, board = nil)
    @color = color
    @pos = pos
    @board = board
  end

  def to_s
  end

  def empty?
  end

  def symbol
  end

  def valid_moves
  end

  private
  def move_into_check?(to_pos)
  end

end
