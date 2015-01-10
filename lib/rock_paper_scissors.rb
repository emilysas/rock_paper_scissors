require 'sinatra/base'

class Rock_Paper_Scissors < Sinatra::Base

  set :static, true
  set :root, File.dirname(__FILE__)
  set :public_dir, Proc.new{File.join(root, '..', "public")}
  set :public_folder, 'public'
  
  before do
    Choices = {
      rock: "Rock", 
      paper: "Paper",
      scissors: "Scissors"
    }
    @winner = {rock: :scissors, paper: :rock, scissors: :paper}
    @play = @winner.keys
  end

  def computer_choice
    @computer_choice = Choices.keys.sample.to_s
  end

  get '/' do
    erb :get_name
  end

  get '/new_game' do
    session[:name] = params[:name]
    erb :make_choice
  end

  post '/result' do
    @choice = params[:choice]
    computer_choice
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
