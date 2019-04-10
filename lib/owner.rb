require 'pry'

class Owner
  
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  @@count = 0
  @@reset_all = (@@count = 0)
  
  def initialize(species)
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@count += 1
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
  def self.reset_all
    @@reset_all
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
    @pets[:dogs].each{ |dog| dog.mood = "happy" }
  end
  
  def play_with_cats
    @pets[:cats].each{ |cat| cat.mood = "happy" }
  end
  
  def feed_fish
    @pets[:fishes].each{ |fish| fish.mood = "happy" }
  end 
  
  def sell_pets
    @pets.each do |k, v|
      v.each{ |pet| pet.mood = "nervous" }
      v.clear
    end
  end 
  
  def list_pets
    return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end  
end