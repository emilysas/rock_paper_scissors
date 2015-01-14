require 'sinatra/base'
require_relative 'opponent'
require_relative 'player'
require_relative 'game'


class Rock_Paper_Scissors < Sinatra::Base

  enable :sessions
  set :static, true
  set :root, File.dirname(__FILE__)
  set :public_dir, Proc.new{File.join(root, '..', "public")}
  set :public_folder, 'public'
  
  get '/' do
    erb :get_name
  end

  post '/new_game' do
    game = Game.new(Player.new(params[:name]), Opponent.new)
    session[:game] = game
    puts game
    puts session[:game]
    erb :make_choice
  end

  get '/result' do
    puts session[:game]
    session[:game].player1_go(params[:choice])
    @comp_choice = session[:game].player2_go
    @user_choice = session[:player].choice
    puts @user_choice
    @round_result = session[:game].compare(@user_choice, @comp_choice)
    erb @round_result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
