


class Knight < Piece

  def symbol
    @color == :white ? "\u2658".encode('utf-8') : "\u265E".encode('utf-8')
  end

end
