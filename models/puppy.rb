# Puppies should have name, breed, and months_old attributes.
# You will need to be able to pass these three attributes to
# initialization, as well as readers or accessors for the attributes.

class Puppy

  attr_accessor :name, :breed, :months_old

  def initialize( name, breed, months_old)
    @name, @breed, @months_old = name, breed, months_old
  end

end
