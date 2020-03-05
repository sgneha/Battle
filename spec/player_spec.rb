# frozen_string_literal: true

require 'player'
describe Player do
  subject(:neha) { Player.new('Neha') }
  describe '#name' do
    it 'returns name' do
      expect(neha.name).to eq 'Neha'
    end
  end
end
