require 'pry'

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
    @pets[:cats] << new_cat
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end 
  
  def walk_dogs
    
  end
  
  def play_with_cats
    
  end
  
  def feed_fish
    
  end  
end