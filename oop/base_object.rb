#base object
class Animal
	def initialize
		@type = 'Animal'
	end

	def present
		puts "Hello, I am a #{@type}"
	end

end


#inheritance
class Dog

	#getters shortcut
	attr_reader :type

	#setters shortcut
	attr_writer :type

	def initialize
		@type = 'Dog'
	end

	def present
		puts "Woof, I am a #{@type}"
	end

end


friend = Dog.new

friend.present

friend.type = "Doggo"

puts friend.type