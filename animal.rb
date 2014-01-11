class Animal
	# @@animal = []
	attr_accessor :name, :age, :gender, :species
	def initialize(name, age, gender, species)
		@name = name
		@age = age
		@gender = gender
		@species = species
		# @@animal << self
	end

	def test
		puts "A test of animal creation"
	end
end

neko = Animal.new("fluffs", 5, "female", "cat")
neko.test