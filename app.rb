require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :index
    end    

    get '/new' do
        erb :create_puppy
    end    

    post '/puppy' do
        #receive puppy info from form 
        @name = params[:name]
        @breed = params[:breed]
        @age = params[:age] 
        erb :display_puppy
    end

    get '/display_puppy' do
        
    end



end
