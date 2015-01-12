require 'player'

describe Player do

  let(:player){Player.new}

  it 'can allows a player to choose rock, paper, or scissors' do
    player.choice = :rock
    expect(player.choice).to eq(:rock)
  end
  
end