class Opponent

  attr_accessor :choice

  OPTIONS = [:rock, :paper, :scissors]

  def choose
    @choice = OPTIONS.sample
  end

end