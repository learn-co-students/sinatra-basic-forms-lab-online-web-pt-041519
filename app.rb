require_relative 'config/environment'

class App < Sinatra::Base

  # Homepage
  get '/' do
    erb :index
  end

  # Puppy list form
  get '/new' do
    erb :create_puppy
  end

  # Display puppy results
  post '/puppy' do
    pup = Puppy.new(params[:name], params[:breed], params[:age])
    @name = pup.name
    @breed = pup.breed
    @age = pup.months_old

    erb :display_puppy
  end

end
