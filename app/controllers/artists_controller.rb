class ArtistsController < ApplicationController
   
        # register Sinatra::ActiveRecordExtension
        # set :session_secret, "my_application_secret"
        set :views, Proc.new { File.join(root, "../views/artists") } #return to <----
      
        get '/artists' do
            @artists = Artist.all
          erb :index
        end

        get '/artists/:id' do
            @artist = Artist.find(params[:id])
            # @genres = Genre.all

            erb :show
        end




end
