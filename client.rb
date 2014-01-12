# A client should be able to adopt an animal.
# A client should be able to put an animal up for adoption

class Client
	attr_accessor :name, :age, :num_children, :num_pets, :exist #num_pets is challenge
	def initialize(name, age, num_children, num_pets, exist = nil)
		@name = name
		@age = age
		@num_children = num_children
		@num_pets = num_pets
		@exist = exist
	end

	def exists?
		@exist.nil?
	end
end
