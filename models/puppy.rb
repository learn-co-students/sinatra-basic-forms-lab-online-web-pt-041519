class Puppy
  attr_accessor :name, :breed, :months_old
  alias_method :age, :months_old
  alias_method :age=, :months_old=
  
  def initialize(name, breed, months_old)
    @name= name
    @breed= breed 
    @months_old= months_old
  end
  
end