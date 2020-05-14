require 'sinatra/base'
require 'capybara'
require_relative './lib/player.rb'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $playerone = Player.new(params[:playerone])
    $playertwo = Player.new(params[:playertwo])
    redirect '/play'
  end

  get '/play' do
    @playerone = $playerone.name
    @playertwo = $playertwo.name
    erb :play
  end

  get '/confirmation' do
    @playertwo_name = $playertwo.name
    $playertwo.reduce_hitpoints_after_attack
    @playertwo_hitpoints = $playertwo.hitpoints
    erb :confirmation
  end

  run! if app_file == $0
end
