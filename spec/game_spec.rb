require 'game'
describe Game do

  let(:bob) { double :player}
  let(:carl) { double :player, :take_damage => 50}
  subject(:game) { Game.new }

  describe '#attack' do 
    it 'Attacks specified player' do
      expect(carl).to receive(:take_damage)
      game.attack(carl)
    end
  end

end
