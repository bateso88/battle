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

get '/cat' do
  "<div style='border: 10px solid green'>
    <img src='https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png'>
  </div>"
end
