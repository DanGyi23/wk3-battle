require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    "Let's battle!"
  end

  !run if app_file == $0
end