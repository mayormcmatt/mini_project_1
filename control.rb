require './shelter'
require './animal'
require './client'

shelter = Shelter.new

def menu text
	puts "__Shelter Manager 0.1__\n\n"
	puts "#{text}\n\n" unless text.empty? #displays unless there's no text

	puts "1. Add animal"
	puts "2. Add client"
	puts "3. Display all animals"
	puts "4. Display all clients"
	puts "5. Initiate client animal adoption"
	puts "6. Initiate client putting up animal for adoption"
	puts "q. quit\n\n"

	puts "-->"
	gets.chomp
end

text = "" #sets text to empty string
choice = menu text #sets choice to output of menu(text); the gets.chomp input

while choice != "q" #while not 'q' continues printing menu options
	text = "" #text set to empty string so that user can fill with their option
	case choice #case statement assoc. w/ user choice
	when "1"
		puts "Let's input a new animal"
		#if commands are short and related, put > 1 on a line with ';'
		puts "Animal's name: "; name = gets.chomp
		puts "Animal's age: "; age = gets.chomp
		puts "Animal's gender: "; gender = gets.chomp
		puts "Animal's species: "; species = gets.chomp

		#calls file 'shelter' and animal array in there
		#shovels into animal array a new instance of Animal in with all attribute
		shelter.animal << Animal.new(name, age, gender, species)
		text = "Added #{shelter.animal.last.name}"
	when "2"
		puts "Let's input a new client"
		puts "Client's name: "; name = gets.chomp
		puts "Client's age: "; age = gets.chomp
		puts "Client has how many kids: "; num_children = gets.chomp
		num_pets = 0
		shelter.client << Client.new(name, age, num_children, num_pets)
	when "3"
		#sets var to file shelter that calls method to get avail. animals
		available_animals = shelter.get_available_animals()
		text = "Here are all available animals:\n"
		#so avail. animals is set above, now we go through it and add
		#names to text var. that prints them out
		available_animals.each {|ani| text += ani.name + " "}
	when "4"
		existing_clients = shelter.get_client_info()
		text = "Here are all clients:\n"
		existing_clients.each do |cli|
			text += cli.name + " "
		end
	when "5"
		puts "something"
	when "6"
		puts "something"
	else
		puts "Not a valid input"
	end
	choice = menu text
end