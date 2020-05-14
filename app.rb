require 'sinatra/base'
require 'capybara'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:playerone]= params[:playerone]
    session[:playertwo]= params[:playertwo]
    redirect '/play'
  end

  get '/play' do
    @playerone = session[:playerone]
    @playertwo = session[:playertwo]
    erb :play
  end

  get '/confirmation' do
    erb :confirmation
  end

  run! if app_file == $0
end
