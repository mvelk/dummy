require_relative 'piece'
class Pawn < Piece

  def initialize(color, pos, board)
    @has_moved = false
    super
  end

  def symbol
    @color == :white ? "\u2659".encode('utf-8') : "\u265F".encode('utf-8')
  end

end
