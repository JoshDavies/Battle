require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions


  get '/' do
    session[:player1_hp] = 200
    session[:player2_hp] = 200
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    session[:header] = "#{session[:player1]}'s turn"
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player1_HP = session[:player1_hp]
    @player2_HP = session[:player2_hp]
    @header = session[:header]
    erb(:play)
  end

  get '/attac_player2' do
    session[:player2_hp] -= 10
    session[:header] = "#{session[:player1]} attacks #{session[:player2]}"
    redirect '/play'
  end

  # start server if ruby file executed directly.
  run! if app_file == $0
end
