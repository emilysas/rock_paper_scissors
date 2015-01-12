class Opponent

  attr_accessor :choice

  OPTIONS = [:rock, :paper, :scissors]
  WINNER = {rock: :scissors, paper: :rock, scissors: :paper}

  def choose
    @choice = OPTIONS.sample
  end

end