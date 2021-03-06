class Owner
  
  @@all = []
  
  
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
Cat.new(cat, self)
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
  Cat.all.each {|cat| cat.mood = "nervous"} && Dog.all.each {|dog| dog.mood = "nervous"}
 Cat.all.each {|cat| cat.owner = nil} && Dog.all.each {|dog| dog.owner = nil}
end 

def list_pets 
  return "I have #{dogs.length} dog(s), and #{cats.length} cat(s)." 
end 
  
end