require 'opponent'

describe Opponent do

  let(:opponent){Opponent.new}

  it 'can make a random choice' do
    opponent.choose
    expect(opponent.choice).to eq(:rock || :paper || :scissors)
  end
  
end