require 'game'

describe Game do

  let(:board) { double :board, flip: nil }
  let(:board_class) { double :board_class, new: board }
  subject(:my_game) { Game.new(board_class) }

  it "is started with a board" do
    expect(my_game.board).not_to be_nil
  end

  describe "#place_ship" do
    it "places a ship on the board" do
      my_game.place_ship('a',1)
      expect(board).to have_received :flip
    end
  end
end
