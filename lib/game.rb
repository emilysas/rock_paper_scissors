require_relative 'player'

# Need 3 classes
# Player - make a choice
# Opponent - make a choice
# Game - know if choice has been made, compare choices, declare win/draw/lose

class Game

  attr_accessor :player, :opponent

  def player1(option)
    player.choice(option)
  end

end