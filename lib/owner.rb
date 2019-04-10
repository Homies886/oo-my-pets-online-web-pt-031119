class Owner
  
  attr_accessor :name, :dogs, :fish, :cats
  attr_reader :species
  
  def initialize(name)
    @name = name
  end  
  
end