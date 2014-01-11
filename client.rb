# A client should be able to adopt an animal.
# A client should be able to put an animal up for adoption

class Client
	attr_accessor :name, :age, :num_children, :num_pets
	def initialize(name, age, num_children, num_pets)
		@name = name
		@age = age
		@num_children = num_children
		@num_pets = num_pets
	end

	def test
		puts "A test of client creation"
	end
end

bob = Client.new("Bob", 45, 2, 0)
bob.test