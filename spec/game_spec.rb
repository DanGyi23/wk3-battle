require 'game'

describe Game do
  subject(:game) { described_class.new(player_1,player_2) }
  subject(:player_1) { double :player }
  subject(:player_2) { double :player }

  describe '#player1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq(player_1)
    end
  end

  describe '#player2' do
    it 'retrieves the first player' do
      expect(game.player_2).to eq(player_2)
    end
  end

  describe '#current_turn' do
    it 'switches the turn after each attack' do
      game.switch_turn
      expect(game.current_turn).to eq(player_2)
    end
  end

  describe '#opponent_of' do
    it 'finds the opponent of a player' do
      expect(game.opponent_of(player_1)).to eq player_2
      expect(game.opponent_of(player_2)).to eq player_1
    end
  end

end