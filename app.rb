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

get '/random-cat' do
  @border_width = rand(40)
  @border_colour = [rand(256),rand(256),rand(256)].join(',')
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end

post '/named-cat' do
  p params
  @border_width = rand(40)
  @border_colour = [rand(256),rand(256),rand(256)].join(',')
  @name = params[:name]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end
