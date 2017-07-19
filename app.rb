require 'sinatra/base'

#set :session_secret, 'super secret'
class Battle < Sinatra::Base

enable :sessions

get '/' do
  erb(:index)
end

post '/names' do
  session['player_1_name'] = params[:player_1_name]
  session['player_2_name'] = params[:player_2_name]
  p session
  redirect '/play'
end

get '/play' do
  p session
  erb :play, { locals: { player_1_name: session['player_1_name'], player_2_name: session['player_2_name'] } }
end

  #start the server if ruby file executed directly
  run! if app_file == $0
end
