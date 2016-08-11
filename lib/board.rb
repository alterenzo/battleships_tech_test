class Board
  include Enumerable

  DEFAULT_LENGTH = 10

  def initialize(length = DEFAULT_LENGTH)
    row = Array.new(length, false)
    @all = Array.new(length) { row.clone }
  end

  def each(&block)
    @all.each do |row|
      row.each do |cell|
        block.call(cell)
      end
    end
  end

  def flip(row, col)
    @all[row][col] ^= true
  end

  def [](row)
    @all[row].dup
  end


end
