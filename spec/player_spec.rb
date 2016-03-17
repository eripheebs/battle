require 'player'

describe Player do
  subject(:player) { described_class.new "Bob" }
  subject(:player2) { described_class.new "Martin" }

  it 'should return a name' do
    expect(player.name).to eq("Bob")
  end

  it 'should return hit points' do
    expect(player.points).to eq(Player::START_POINTS)
  end

end
