require 'board'


describe Board do

  subject(:my_board){ Board.new }

  it "is initialized with 'false' in every cell" do
    expect(my_board.all? { |c| !c }).to be true
  end

  describe "#flip" do
    it "flips the status at an index" do
      my_board.flip(1,1)
      expect(my_board[1][1]).to be true
    end
  end

  describe "#[](n)" do
    it "returns the nth row of the board" do
      expect(my_board[1]).to be_a Array
    end
  end
end
