class Piece

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
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
  def move_into_check?
  end

end

class Slideable

end

class Stepable

end

class NullPiece
  include Singleton
end

class King < Piece

end

class Knight < Piece

end

class Pawn < Piece

end

class Bishop < Piece
end

class Rook < Piece
end

class Queen < Piece
