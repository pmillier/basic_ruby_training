
class Guild
	#magic class to have access to array functions
	include Enumerable

	#each overwrite for enumerable
	def each
		return enum_for(:each) unless block_given?

		@people.each do |member|
			yield members
		end
	end


	def initialize(members)
		@people = members
	end

	#basic yield
	def run_inspection
		@people.each do |member|
			unless block_given?
				puts 'Inspection failed'
				return self
			end
			yield member
		end
	end

	# conditionned yield and return
	def get_elites
		elites = []

		unless block_given?
			puts 'Best warriors are still sleeping, zzzz'
			return []
		end
		puts "Gathering elite members..."
		@people.each do |member|

			if yield member
				elites << member
			end
		end

		elites
	end

end



initTab = [
	{name: 'Pierre', class: 'Mage', level: 10},
	{name: 'Alain', class: 'Bard', level: 11},
	{name: 'Pierreuh', class: 'Warrior', level: 9},
]


my_guild = Guild.new(initTab)

my_guild.run_inspection do |member|
	puts "#{member[:class]} #{member[:name]} representing the Guild sir. I'm level #{member[:level]}"
end


elites = my_guild.get_elites do |member|
	member[:level] >= 10
end

puts elites


