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

  it 'can ask the opponent to make a choice' do
    game.player2_go
    allow(opponent).to receive(:choose){:scissors}
    expect(opponent.choice).to eq(:scissors)
  end

  it 'can compare the choices' do
    expect(game.compare(:rock, :scissors)).to eq(:win)
  end

  xit 'can declare a winner' do

  end

  xit 'can declare a draw' do

  end

  xit 'can declare a loser' do

  end

end