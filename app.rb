require 'sinatra'

class Battle < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect to('/play')
  end

  get '/play' do
    @name1 = session[:player_1_name]
    @name2 = session[:player_2_name]
    erb(:play)
  end

  !run if app_file == $0

end