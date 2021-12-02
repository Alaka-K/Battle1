require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Testing infrastructure working!'
  end

  get '/form' do
    erb :index
  end

  post '/names' do
    p params
   @Name1 = params[:Name1]
   @Name2 = params[:Name2]
   erb :play
  end

  run! if app_file == $0
end