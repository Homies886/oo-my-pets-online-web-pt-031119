class Owner
  
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  @@count = 0
  
  def initialize(name)
    @name = name
    @@all << name
    @pets = {fishes: [], cats: [], dogs: []}
    @species
  end
  
  def self.all
    @@all
  end
  
  def species
    
  end  
  
  def buy_cat
    
  end
  
  def buy_dog
    
  end
  
  def buy_fish
    
  end  
end