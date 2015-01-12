require 'opponent'

describe Opponent do

  let(:opponent){Opponent.new}

  it 'can make a random choice' do
    opponent.choose
    opponent.choice = :rock 
    expect(opponent.choice).to eq(:rock)
  end
  
end