class Owner
  
  @@all = []
  @@pets = {:cats => [], :dogs => []}
  
  attr_accessor :owner, :pets, :cat, :dog
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

def pets 
  @@pets
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
@@pets[:cats] << Cat.new(cat, self)
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


def sell_pets 
pets.each do |pet, arr|
  arr.map do |pet|
    pets.mood = "nervous"
  end 
end 
  @@pets.clear
end 
  
end