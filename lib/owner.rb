class Owner
  
  @@all = []
  @@pets = {:cats => [], :dogs => []}
  
  attr_accessor :owner
  attr_reader :name, :species 

 def initialize(name, species="human")
    @name = name 
    @species = species
    save
  end 
  
  def owner=(name)
    @name = name 
  end 
  
def say_species 
  return "I am a #{species}."
end 

def self.all 
  @@all 
end 

def save
  @@all << self 
end 

def self.count
  @@all.count 
end 

def self.reset_all 
  @@all = []
end 

def cats 
  Cat.all.select {|cat| cat.owner == self }
end 

def dogs 
  Dog.all.select {|dog| dog.owner == self }
end 


def buy_cat(cat)
# Cat.new(cat, self)
@@pets[:cats].each 
end 

def buy_dog(dog)
  Dog.new(dog, self)
end 

def walk_dogs
  Dog.all.each {|dog| dog.mood = "happy"}
end 

def feed_cats 
  Cat.all.each {|cat| cat.mood = "happy"}
end 

def pets 
  @@pets
end 

def sell_pets 
pets.each do |pet, type|
  type.map do |pet|
    pet.mood = "nervous"
  end 
  type.clear
end 
end 
  
end