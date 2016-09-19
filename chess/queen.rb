require_relative 'piece'
class Queen < Piece

  def symbol
    @color == :white ? "\u2655".encode('utf-8') : "\u265B".encode('utf-8')
  end

end
