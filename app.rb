require_relative 'config/environment'
require_relative 'models/pig_latinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    norm_text = PigLatinizer.new
    @pig_text = norm_text.piglatinize(params[:user_phrase])

    erb :piglatin
  end


end
