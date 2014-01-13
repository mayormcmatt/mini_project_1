# A client should be able to adopt an animal.
# A client should be able to put an animal up for adoption

class Client
	attr_accessor :name, :age, :num_children, :pets_owned, :num_pets, :exist #num_pets is challenge
	def initialize(name, age, num_children, pets_owned = [], exist = nil)
		@name = name
		@age = age
		@num_children = num_children
		@pets_owned = pets_owned
		# @num_pets = num_pets
		@exist = exist
	end

	def add_animal_client(animal)
		@pets_owned << animal
	end

	def exists?
		@exist.nil?
	end
end
