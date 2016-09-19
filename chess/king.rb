require_relative 'piece'
class King < Piece
  # include Stepable

  def initialize(color, pos, board)
    @has_moved = false
    super
  end

  def symbol
    @color == :white ? "\u2654".encode('utf-8') : "\u265A".encode('utf-8')
  end

end
