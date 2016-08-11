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

  def flip(row_index, cell_index)
    @all[numerify(row_index)][cell_index] ^= true
  end

  def [](row_index)
    @all[numerify(row_index)].dup
  end


  private

  def numerify(letter)
    letter.downcase.ord - 97
  end

end
