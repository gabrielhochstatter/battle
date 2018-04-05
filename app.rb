require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_one_name]), Player.new(params[:player_two_name]))
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    $game.attack($game.player_one, $game.player_two)
    erb(:attack)
  end

  post '/attack_p1' do
    $game.attack($game.player_two, $game.player_one)
    erb(:attack_p1)
  end

  run! if app_file == $0
end
