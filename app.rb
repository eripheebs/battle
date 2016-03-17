require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new params[:player1]
    $player2 = Player.new params[:player2]
    redirect '/players'
  end

  get '/players' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb :players
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    $player1.attack($player2)
    erb :attack
  end

  run! if app_file == $0
end
