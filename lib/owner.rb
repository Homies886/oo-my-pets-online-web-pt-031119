class Owner
  
  attr_accessor :name, :dogs, :fish, :cats
  attr_reader :species
  
  @@all = []
  @@count = 0
  
  def initialize(name)
    @name = name
    @@all << name
    @pets = 
  end
  
  def self.all
    @@all
  end
  
  def species(species)
    
  end  
  
end