require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "Hello you foolish duck"
end

get '/secret' do
  "You know all my inner thoughts"
end

get '/HollySecret' do
  "I am a magician"
end
