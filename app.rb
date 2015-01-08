require 'sinatra'
require 'cat_api'

class CatApp < Sinatra::Base

  get '/cats' do
    @pictures = CatAPI.new.get_images(params)
    erb :cats
  end

end
