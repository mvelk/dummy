class Pawn < Piece

  def symbol
    @color == :white ? "\u2659".encode('utf-8') : "\u265F".encode('utf-8')
  end

  def moves
    offsets = forward_steps + side_attacks
  end

  protected
  def at_start_row?
    return true if @color == :white && @pos[0] == 6
    return true if @color == :black && @pos[0] == 1
    false
  end

  def forward_dir
    @color == :black ? 1 : -1
  end

  def forward_steps
    return [[forward_dir * 2, 0], [forward_dir, 0]] if at_start_row?
    [forward_dir, 0]
  end

  def side_attacks
    [[forward_dir, 1], [forward_dir, -1]]
  end

end
