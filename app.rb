require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_one = Player.new(params[:player_one_name])
    $player_two = Player.new(params[:player_two_name])
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    $player_one.attack($player_two)
    erb(:attack)
  end

  run! if app_file == $0
end
