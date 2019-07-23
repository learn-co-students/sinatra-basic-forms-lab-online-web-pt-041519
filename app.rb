require_relative 'config/environment'
# require_relative 'models/puppy.rb'
class App < Sinatra::Base
# In app.rb build out a GET request to load a homepage.
#  The homepage should go to the main route /.
  get '/'  do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @puppy = Puppy.new(params['name'], params['breed'], params['age'])
    # @name = @puppy.name
    # @breed = @puppy.breed
    # @age = @puppy.months_old
    erb :display_puppy
  end


end
