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

  end

  xit 'can compare the choices' do

  end

  xit 'can declare a winner' do

  end

  xit 'can declare a draw' do

  end

  xit 'can declare a loser' do

  end

end