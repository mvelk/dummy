require_relative 'manifest'

class Board
  attr_accessor :rows

  def initialize
    @rows = Array.new(8) { Array.new(8) }
    make_starting_grid
  end

  def [](pos)
    x, y = pos
    @rows[x][y]
  end

  def []=(pos, piece)
    x, y = pos
    @rows[x][y] = piece
  end

  def dup
  end

  def move_piece(color, from_pos, to_pos)
  end

  def move_piece!(from_pos, to_pos)
    raise ArgumentError.new "You can't move a piece that's not on the board!" unless from_pos.all? { |coordinate| coordinate.between?(0,7) }
    raise ArgumentError.new "No piece to move!" if @rows[from_pos].empty?
    raise ArgumentError.new "You can't move off the board!" unless to_pos.all? { |coordinate| coordinate.between?(0,7) }

    moved_piece = self[from_pos]
    raise ArgumentError.new "This piece doens't move that way!"

    #update the board
    self[to_pos] = moved_piece
    self[from_pos] = NullPiece.instance
    #update the piece
    moved_piece.pos = to_pos

  end

  def checkmate?
  end

  protected
  def make_starting_grid

    #place pawns
    [1,6].each do |row_num|
      color = row_num == 1 ? :black : :white
      (0..7).each do |col_num|
        self[[row_num, col_num]] = Pawn.new(color, [row_num, col_num], self)
      end
    end

    #place pieces
    [0,7].each do |row_num|
      color = row_num == 0 ? :black : :white
      #place rooks
      [0,7].each do |col_num|
        self[[row_num, col_num]] = Rook.new(color, [row_num, col_num], self)
      end
      #place knights
      [1,6].each do |col_num|
        self[[row_num, col_num]] = Knight.new(color, [row_num, col_num], self)
      end
      #place bishops
      [2,5].each do |col_num|
        self[[row_num, col_num]] = Bishop.new(color, [row_num, col_num], self)
      end
      #place queens
      self[[row_num, 3]] = Queen.new(color, [row_num, 3], self)
      #place kings
      self[[row_num, 4]] = King.new(color, [row_num, 4], self)
    end

    #place null pieces
    (2..5).each do |row_num|
      (0..7).each do |col_num|
        self[[row_num, col_num]] = NullPiece.instance
      end
    end

  end

  def find_king(color)
  end

end
