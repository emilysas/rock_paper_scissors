require_relative 'player'

# Need 3 classes
# Player - make a choice
# Opponent - make a choice
# Game - know if choice has been made, compare choices, declare win/draw/lose

class Game

  attr_accessor :player, :opponent

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
