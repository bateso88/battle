# frozen_string_literal: true

require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

# set :session_secret, 'super secret'

# Battle class
class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/test_infrastructure' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    p_1 = Player.new(name: params[:player_1_name])
    p_2 = Player.new(name: params[:player_2_name])
    $game = Game.new(player_1: p_1, player_2: p_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    redirect '/lose' if @game.current_turn.hp <= 0 
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent_of(@game.current_turn))
    erb(:attack)
  end

  get '/lose' do 
    @game = $game
    erb(:lose)
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
