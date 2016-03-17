require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new params[:player1]
    player2 = Player.new params[:player2]
    $game = Game.new player1, player2
    redirect '/players'
  end

  get '/players' do
    @game = $game
    erb :players
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player2)
    erb :attack
  end

  run! if app_file == $0
end
