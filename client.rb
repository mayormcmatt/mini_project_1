# A client should be able to adopt an animal.
# A client should be able to put an animal up for adoption

class Client
	attr_accessor :name, :age, :num_children, :pets_owned, :num_pets, :exist
	#added empty array of owned pets
	def initialize(name, age, num_children, pets_owned = [], exist = nil)
		@name = name
		@age = age
		@num_children = num_children
		@pets_owned = pets_owned
		# @num_pets = num_pets #haven't implemented this yet
		@exist = exist 
	end

	#adds animal to array of client-owned pets
	def add_animal_client(animal)
		@pets_owned << animal
	end

	def show_owned_animals()
		return @pets_owned.select {|ani| ani.exists?}
	end

	def lookup_animal(name)
		animal_name = @pets_owned.select {|ani| name == ani.name}
		return animal_name.pop
	end

	def delete_animal(animal)
		@pets_owned.delete(animal)
	end

	def exists?
		@exist.nil?
	end
end
