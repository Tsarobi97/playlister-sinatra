class GenresController < ApplicationController
   
    # register Sinatra::ActiveRecordExtension
    # set :session_secret, "my_application_secret"
    set :views, Proc.new { File.join(root, "../views/genres") } #return to <----
  
    get '/genres' do
        @genres = Genre.all
      erb :index
    end

    get '/genres/:id' do
        @genre = Genre.find(params[:id])
        erb :show
    end




end
