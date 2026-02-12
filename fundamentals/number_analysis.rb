puts "Please type a number"

nb = gets.chomp.to_i

nb_type = 'zero'
nb_is_odd = 'odd'

if (nb > 0)
	nb_type = 'positive'
elsif (nb < 0)
	nb_type = 'negative'
end

if (nb % 2 == 0)
	nb_is_odd = 'even'
end

puts "You number #{nb} is #{nb_type} and is #{nb_is_odd}"