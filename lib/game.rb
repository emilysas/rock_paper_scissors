require_relative 'player'
require_relative 'opponent'

class Game

   
  attr_reader :result, :player, :opponent

  WINNER = {rock: :scissors, paper: :rock, scissors: :paper}

  def initialize(player, opponent)
    @player = player
    @opponent = opponent
  end

  def player1_go(option)
    player.choice=(option) 
  end

  def player2_go
    opponent.choose
  end

  def compare(player1_choice, player2_choice)
    if player1_choice == player2_choice
      @result = :draw
    elsif player1_choice == WINNER[player2_choice]
      @result = :loss
    else
      @result = :win  
    end
    @result
  end

end
