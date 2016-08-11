require 'board'


describe Board do

  subject(:my_board){ Board.new }

  it "is initialized with 'false' in every cell" do
    expect(my_board.all? { |c| !c }).to be true
  end

  describe "#flip" do
    it "flips the status at an index" do
      my_board.flip('a',1)
      expect(my_board['a'][1]).to be true
    end
  end
end
