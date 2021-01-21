require 'player'
describe Player do 
  subject(:simon) { Player.new(name: 'Simon') }
  subject(:phil) { Player.new(name: 'Phil') }
  describe '#name' do 
    it 'Returns player name' do
      expect(simon.name).to eq "Simon"
    end
  end

  describe '#hp' do 
    it "Returns player's HP" do
      expect(simon.hp).to eq described_class::DEFAULT_HP
    end
  end
   
  describe '#take_damage' do
    it "Reduces player HP" do
      expect { simon.take_damage }.to change { simon.hp }.by(-10)
    end
  end
end