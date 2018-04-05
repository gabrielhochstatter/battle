require 'game'

describe Game do
  let(:game) { described_class.new(player1, player2) }
  let(:player1) { Player.new('playerone') }
  let(:player2) { Player.new('playertwo') }

  describe '#attack' do
    it "reduces the attacked's hitpoints by 10" do
      game.attack(player1, player2)
      expect(game.player_two.hitpoints).to eq 40
    end

    # it "takes who's turn it is into account" do
    #   expect(game.attack(player2, player1)).to eq game.not_your_turn
    # end
  end

  it "can have a winner" do
    5.times do
      game.attack(player1, player2)
    end
    expect(game.winner).to eq player1
  end
end
