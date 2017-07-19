require 'sinatra/base'
require_relative 'lib/player'

#set :session_secret, 'super secret'
class Battle < Sinatra::Base

enable :sessions

$attack_styles = {"Ask obvious question!"=>10, "Think!"=>-10, "Daydream!"=>10, "Turn up late!"=>20, "Search for answer on Google... but make a typo and end up on an site with some random capybara animal videos on it, then put hand up!"=>30, "Not submit daily feedback!"=>20, "Walk out of stand up!"=>100 }

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
  @attack_strength = $attack_styles[@attack_style]
  $player_1.attack($player_2, @attack_strength)
  erb(:attack)
end

  #start the server if ruby file executed directly
  run! if app_file == $0
end
