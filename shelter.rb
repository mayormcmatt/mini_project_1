class Shelter
	attr_accessor :client, :animal
	#since this stores the lists of clients and animals
	#initialize empty arrays to facilitate
	def initialize(client = [], animal = [])
		@animal = animal
		@client = client
	end

	#method to get avail. animals; pulls from animal, feeds into contol
	def get_available_animals()
		#from animal selects all animals that exist
		return @animal.select {|ani| ani.exists?}

	end

	def get_client_info()
		return @client.select {|cli| cli.exists?}
	end

	def lookup_animal(name)
		animal_name = @animal.select {|ani| name == ani.name}
		return animal_name.pop
	end

	def lookup_client(name)
		client_name = @client.select {|cli| name == cli.name}
		return client_name.pop
	end

	def remove_animal(animal)
		@animal.delete(animal)
	end
end

