require 'game'

describe Game do

  let(:game){Game.new}
  let(:player){double :player}

  it 'can ask the player to make a choice' do
    game.player1(:rock)
    expect(:player).to receive(:choice=){:rock}
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