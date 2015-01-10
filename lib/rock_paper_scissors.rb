require 'sinatra/base'

class Rock_Paper_Scissors < Sinatra::Base
  get '/' do
    erb :get_name
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
