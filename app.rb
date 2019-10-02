require 'sinatra/base'

class Battle < Sinatra::Base

  # start server if ruby file executed directly.
  run! if app_file == $0
end
