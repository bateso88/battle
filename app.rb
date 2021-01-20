# frozen_string_literal: true

require 'sinatra'
require 'sinatra/base'
require 'shotgun'

#set :session_secret, 'super secret'


class Battle < Sinatra::Base
  enable :sessions

  get '/test_infrastructure' do
    'Testing infrastructure working!'
  end

  get '/' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb(:index)
  end

  post '/names' do
    #@player_1_name = params[:player_1_name]
    #@player_2_name = params[:player_2_name]
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name] 
    redirect '/play'
  end

  get '/play' do 
    p session
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb(:play)
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
