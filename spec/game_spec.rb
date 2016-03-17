require 'game'

describe Game do
  let(:player1) { double :player, name: "Bob" }
  let(:player2) { double :player, points: 5 }
  subject(:game) { described_class.new player1, player2 }

  describe '#attack' do
      it 'should deduct 10 points from player 1 in first attack' do
        expect(player1).to receive(:deduct)
        game.attack(player1)
      end

      it 'should swap players the second attack' do
        expect(player2).to receive(:deduct)
        game.attack
        game.attack
      end
  end

  it 'should retrieve the first player' do
    expect(game.player1).to eq player1
  end

  it 'should retrieve the second player' do
    expect(game.player2).to eq player2
  end

end
