require 'player'

describe Player do
  let(:player) { described_class.new('playerone') }

  it "has a method that returns a name" do
    expect(player.name).to eq 'playerone'
  end

  describe '#take_damage' do
    it "reduces player hitpoints by an amount" do
      player.take_damage(10)
      expect(player.hitpoints).to eq 40
    end
  end
end
