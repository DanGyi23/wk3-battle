require 'sinatra'

class Battle < Sinatra::Base
  
  get '/' do
    erb(:index)
  end

  post '/names' do
    @name1 = params[:player_1_name]
    @name2 = params[:player_2_name]
    erb(:play)
  end

  !run if app_file == $0

end