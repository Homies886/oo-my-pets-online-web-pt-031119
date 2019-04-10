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
    @@count += 1
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
  def species
    @species
  end  
  
  def buy_cat(name)
    new_cat = Cat.new(name)
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name)
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
  end  
end