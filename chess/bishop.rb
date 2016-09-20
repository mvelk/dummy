class Bishop < Piece

  def symbol
    @color == :white ? "\u2657".encode('utf-8') : "\u265D".encode('utf-8')
  end

end
