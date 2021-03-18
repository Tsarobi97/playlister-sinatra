class SongsController < ApplicationController
   
    # register Sinatra::ActiveRecordExtension
    # set :session_secret, "my_application_secret"
    set :views, Proc.new { File.join(root, "../views/songs") } #return to <----
  
    get '/songs' do
        @songs = Song.all
      erb :index
    end

    get '/songs/:id' do
        @song = Song.find(params[:id])
        erb :show
    end


end    