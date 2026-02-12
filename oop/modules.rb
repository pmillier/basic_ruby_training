
#module using random math function
module DamageCalculator
	def calculate_damages
		return rand(5..15)
	end
end


#basic module
module Fightable
	include DamageCalculator

	def attacks(target)
		atk = calculate_damages
		puts "#{name} attacks #{target.name}, and apply #{atk} physical damages!"
	end

end


#module that extends class methods
module Rankable
	def ranking
		"My Character rank"
	end

end



class Character
	include Fightable
	extend Rankable

	attr_reader :name

	def initialize(name)
		@name = name
	end

end



char1 = Character.new('Pierre')
char2 = Character.new('Alain')

char1.attacks(char2)


puts Character.ranking