require 'sinatra/base'
require_relative 'lib/player'

#set :session_secret, 'super secret'
class Battle < Sinatra::Base

enable :sessions

get '/' do
  erb(:index)
end

post '/names' do
  $player_1 = Player.new(params[:player_1_name])
  $player_2 = Player.new(params[:player_2_name])
  # session['player_1_name'] = params[:player_1_name]
  # session['player_2_name'] = params[:player_2_name]
  redirect '/play'
end

get '/play' do
  erb :play
end

post '/attack' do
  p params
  @attack_style = params[:attack_style]
  erb(:attack)
end

  #start the server if ruby file executed directly
  run! if app_file == $0
end
