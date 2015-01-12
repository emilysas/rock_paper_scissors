require_relative 'player'
require_relative 'opponent'

class Game

  attr_accessor :player, :opponent
  attr_reader :result

  WINNER = {rock: :scissors, paper: :rock, scissors: :paper}

  def initialize(player, opponent)
    @player = player
    @opponent = opponent
  end

  def player1_go(option)
    player.choice = option 
  end

  def player2_go
    opponent.choose
  end

  def compare(player1_go, player2_go)
    if player1_go == player2_go
      @result = :draw
    elsif player1_go == WINNER[player2_go]
      @result = :loss
    else
      @result = :win  
    end
    @result
  end

end
