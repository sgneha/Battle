# frozen_string_literal: true

require './lib/game.rb'
require './lib/player.rb'
require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end
  post '/name' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end
  get '/play' do
    @game = $game
    erb :play
  end
  get '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    erb :attack
  end

  run! if app_file == $PROGRAM_NAME
end
