require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    'Testing infrastructure working!'
  end

  get '/form' do
    erb :index
  end

  post '/names' do
    p params
   session[:Name1] = params[:Name1]
   session[:Name2] = params[:Name2]
   redirect '/play'
  end
  
  get '/play' do
    @Name1 = session[:Name1]
    @Name2 = session[:Name2]
    erb :play
  end

  get '/attack' do
    @Name1 = session[:Name1]
    @Name2 = session[:Name2]
    erb :attack
  end

  run! if app_file == $0
end