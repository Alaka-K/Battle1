require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

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
   
     p @Name1 = Player.new(params[:Name1])
    p @Name2 = Player.new(params[:Name2])
   erb :play 
  end
  
  get '/play' do
  #  p 
  #   @Name1 = Player.new(params[:Name1])
  #   @Name2 = Player.new(params[:Name2])
    
  #   # @Name1 = session[:Name1]
  #   # @Name2 = session[:Name2]
  #   erb :play
  end

  get '/attack' do
    @Name1 = session[:Name1]
    @Name2 = session[:Name2]
    erb :attack
  end

  run! if app_file == $0
end