require 'game'

describe Game do
  let(:game) { described_class.new(player1, player2) }
  let(:player1) { Player.new('playerone') }
  let(:player2) { Player.new('playertwo') }

describe '#attack' do
  it "reduces the attacked's hitpoints by 10" do
    game.attack(player1, player2)
    expect{game.attack(player1, player2)}.to change{player2.hitpoints}.by(-10)
  end
end
end
