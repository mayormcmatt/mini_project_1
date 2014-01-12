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
		@animal.select {|ani| ani.exists?}
	end

	def get_client_info()
		@client.select {|cli| cli.exists?}
	end
end

