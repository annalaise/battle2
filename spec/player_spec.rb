require 'player'

describe Player do
  subject(:player) { described_class.new(player_name) }
  let(:player_name) { "Mike" }
  context 'player initialized with name Mike' do
    it 'should have the name Mike' do
      expect(player.name).to eq player_name
    end
  end
end
