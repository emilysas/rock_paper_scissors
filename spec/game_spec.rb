require 'game'
require 'player'
require 'opponent'

describe Game do

  let(:player){Player.new}
  let(:opponent){Opponent.new}
  let(:game){Game.new(player, opponent)}


  it 'can ask the player to make a choice' do
    game.player1_go(:rock)
    expect(player.choice).to eq(:rock)
  end

  xit 'can ask the opponent to make a choice' do
    game.player2_go
    allow(opponent).to receive(:choose){:scissors}
    expect(opponent.choice).to eq(:scissors)
  end

  it 'can declare a win' do
    expect(game.compare(:rock, :scissors)).to eq(:win)
  end

  it 'can declare a draw' do
    expect(game.compare(:rock, :rock)).to eq(:draw)
  end

  it 'can declare a loss' do
    expect(game.compare(:paper, :scissors)).to eq(:loss)
  end

end