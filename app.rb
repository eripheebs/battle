require 'sinatra/base'

class Battle < Sinatra::base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @name_1 = params[:name_1]
    @name_2 = params[:name_2]
    erb(:play)
  end

  run! if app_file == $0
end
