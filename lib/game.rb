class Game

  def initialize(board_class = Board)
    @board = board_class.new
  end

  def board
    @board.dup
  end

  def place_ship(row,col)
    
    @board.flip(numerify(row),col)
  end

  private

  def numerify(letter)
    letter.downcase.ord - 97
  end

end
