class Owner


attr_accessor :name, :pets
attr_reader :species
 @@all = []

 def initialize(species)
 	@@all << self
 	@species = species
 	@pets = {fishes: [], dogs: [], cats: []}
 end

 def self.all 
 	@@all
 end

 def self.reset_all
 	@@all.clear
 	@@all.count
 end

 def self.count
 	@@all.length
 end

 def say_species
 	"I am a #{self.species}."	
 end

 def buy_fish(fish_name)
 	fish_instance = Fish.new(fish_name)
 	self.pets[:fishes] << fish_instance
 end

 def buy_cat(cat_name)
 	cat_instance = Cat.new(cat_name)
 	self.pets[:cats] << cat_instance
 end

 def buy_dog(dog_name)
 	dog_instance = Dog.new(dog_name)
 	self.pets[:dogs] << dog_instance
 end


 def walk_dogs
 	self.pets[:dogs].each do |dog_instance|
 		dog_instance.mood = "happy"
	end
	self.pets[:dogs]
 end

 def play_with_cats
 	self.pets[:cats].each do |cat_instance|
 		cat_instance.mood = "happy"
	end
	self.pets[:cats]
 end


 def feed_fish
 	self.pets[:fishes].each do |fish_instance|
 		fish_instance.mood = "happy"
	end
	self.pets[:fishes]
 end

 def sell_pets
 	self.pets.each do |species, pet_instances|
 		pet_instances.each do |pet_instance|
 			pet_instance.mood = "nervous"
 			pet_instance = @pets = {fishes: [], cats: [], dogs: []}
		end
	end
 end

 def list_pets
 	"I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
 end
end