class Shelter
	attr_accessor :client, :animal
	def initialize(client, animal = [])
		@animal = animal
		@client = client
	end
end

