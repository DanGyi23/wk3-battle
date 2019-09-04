require 'sinatra'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    erb(:attack)
  end

  post '/attack' do
    @game = $game
    @game.attack($game.opponent_of($game.current_turn))
    if $game.game_over?
      redirect('/lose')
    else
      redirect('/attack')
    end
  end

  post '/switch-turns' do
    $game.switch_turn
    redirect('/play')
  end

  get '/lose' do
    @game = $game
    erb(:lose)
  end

  !run if app_file == $0

end