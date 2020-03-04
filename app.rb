# frozen_string_literal: true

require 'sinatra/base'
class Battle < Sinatra::Base
  enable :sessions
  get '/anything' do
    'Hello World'
  end

  get '/testing' do
    'Testing infrastructure working!'
  end
  get '/' do
    erb :index
  end
  post '/name' do
    session[:Player1] = params[:Player1]
    session[:Player2] = params[:Player2]
    redirect '/play'
  end
  get '/play' do
    @player1 = session[:Player1]
    @player2 = session[:Player2]
    erb :play
  end
  get '/attack' do
    @player1 = session[:Player1]
    @player2 = session[:Player2]
    erb :attack
  end
  run! if app_file == $PROGRAM_NAME
end
