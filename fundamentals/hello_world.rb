
#puts write string
puts "Please state your name"

#gets ask user for a string, chomp trim string
name = gets.chomp

puts "And how old are you ?"

#to_i cast var to integer
age = gets.chomp.to_i

age += 10

#syntax to write variables directly in string output
puts "Hello #{name}, in 10 years, you will be years #{age} old"