class Animal
	attr_accessor :name, :age, :gender, :species, :exist
	def initialize(name, age, gender, species, exist = nil)
		@name = name
		@age = age
		@gender = gender
		@species = species
		@exist = exist
	end

	def exists?
		@exist.nil?
	end
end
