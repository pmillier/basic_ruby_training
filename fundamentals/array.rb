

arr = Array['Apple', 'Orange', 'Banana']

puts arr


puts "Please add a fruit"

newFruit = gets.chomp

arr << newFruit


puts arr.sort


puts "Type a fruit name to delete it"

rmFruit = gets.chomp


if (arr.include? rmFruit)
	arr.delete(rmFruit)
	puts arr
else
	puts "Wrong pick, 404 fruit not found"
end