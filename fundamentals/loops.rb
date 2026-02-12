
#while
def whileLoop(max)
	puts '----- WHILE -----'
	i = 0
	while i <= max
		puts i
		i += 1
	end
end


#times
def timesLoop(max)
	puts '----- TIMES -----'

	j = 20
	puts j.times { |i| puts i }
end


#each
def eachLoop(max)
	puts '----- EACH -----'

	range = 1...20

	puts range.each { |l| puts l }
end



#main execution

whileLoop(20)

timesLoop(17)

eachLoop(9)