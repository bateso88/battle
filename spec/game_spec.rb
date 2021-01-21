# frozen_string_literal: true

require 'game'
describe Game do
  let(:bob) { double :player }
  let(:carl) { double :player }
  subject(:game) { Game.new(player_1: bob, player_2: carl) }

  describe '#attack' do
    it 'Attacks specified player' do
      expect(carl).to receive(:take_damage)
      game.attack(carl)
    end
  end

  describe '#player_1' do
    it 'returns player 1' do
      expect(game.player_1).to eq bob
    end
  end

  describe '#player_2' do
    it 'returns player 2' do
      expect(game.player_2).to eq carl
    end
  end
end
