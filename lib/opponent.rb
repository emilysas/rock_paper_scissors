class Opponent

  attr_accessor :choice

    OPTIONS = ["rock", "paper", "scissors"]
  
  def choose
    @choice = OPTIONS.sample.to_sym
  end

end