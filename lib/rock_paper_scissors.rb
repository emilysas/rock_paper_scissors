require 'sinatra/base'

class Rock_Paper_Scissors < Sinatra::Base

  before do
    @choices = ["rock", "paper", "scissors"]
    @winner = {rock: :scissors, paper: :rock, scissors: :paper}
    @play = @winner.keys
  end

  get '/' do
    erb :get_name
  end

  get '/new_game' do
    session[:name] = params[:name]
    erb :make_choice
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


# get '/throw/:type' do
#   # the params[] hash stores querystring and form data.
#   player_throw = params[:type].to_sym

#   # in the case of a player providing a throw that is not valid,
#   # we halt with a status code of 403 (Forbidden) and let them
#   # know they need to make a valid throw to play.
#   if !@throws.include?(player_throw)
#     halt 403, "You must throw one of the following: #{@throws}"
#   end

#   # now we can select a random throw for the computer
#   computer_throw = @throws.sample

#   # compare the player and computer throws to determine a winner
#   if player_throw == computer_throw
#     "You tied with the computer. Try again!"
#   elsif computer_throw == @defeat[player_throw]
#     "Nicely done; #{player_throw} beats #{computer_throw}!"
#   else 
#     "Ouch; #{computer_throw} beats #{player_throw}. Better luck next time!"
#   end
# end