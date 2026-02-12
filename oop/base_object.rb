#base object
class Animal
	def initialize
		@type = 'Animal'
		@sound = 'Hello'
	end

	def present
		puts "#{@sound}, I am a #{@type}"
	end

end


#inheritance
class Dog < Animal

	#getters shortcut
	attr_reader :type

	#setters shortcut
	attr_writer :type

	def initialize
		#parent initializer
		super
		@type = 'Dog'
		@sound = 'Woof'
	end


end


friend = Dog.new

friend.present

friend.type = "Doggo"

puts friend.type