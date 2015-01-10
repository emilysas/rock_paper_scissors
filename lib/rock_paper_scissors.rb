require 'sinatra/base'

class Rock_Paper_Scissors < Sinatra::Base

  before do
    Choices = {
      rock: "Rock", 
      paper: "Paper",
      scissors: "Scissors"
    }

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

  post '/result' do
    choice = params[:choice]
    computer_choice = Choices.keys.sample.to_s
    if choice == computer_choice
      "You tied with the computer. Try again!"
    elsif computer_choice == @winner[choice.to_sym].to_s
      "Wahoo! #{choice.capitalize} beats #{computer_choice.capitalize}, you win!"
    else 
      "Uh oh, #{computer_choice.capitalize} beats #{choice.capitalize}. Best out of 3?"
     end 
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
