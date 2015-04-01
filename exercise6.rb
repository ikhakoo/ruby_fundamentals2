grocery_list = ["carrots", "toilet paper", "apples", "salmon"]
puts "Welcome to Grocey List Manager!"
puts "Here is a copy of your Grocery List:"

def print_items(list)
	list.each do |item|
		puts "* " + item
	end
end

sorted_list = print_items(grocery_list.sort)
puts "You have #{grocery_list.length} items in your list"
puts "The second item in your list is " + sorted_list[1]

if grocery_list.include?("bananas")
	puts "You need to pick-up bananas"
else
	puts "You don't need to pick-up bananas"
end

puts "Do you want to (a)dd/(r)emove anything else to the list?"
puts "If not, just type (d)one!"
result = gets.chomp.downcase

if result == "a" || result == "add"
	puts "What would you like to add?"
	add = gets.chomp
	grocery_list << add
	puts "Here is a copy of the updated list!"
	print_items(grocery_list.sort)
	puts "You have #{grocery_list.length} items in your list"
elsif result == "r" || result == "remove"
	puts "What would you like to remove?"
	remove = gets.chomp
	grocery_list.delete(remove)
	puts "Here is an updated copy of the list!"
	print_items(grocery_list.sort)
	puts "You have #{grocery_list.length} items in your list"
elsif result == "d" || result == "done"
	puts "Thanks for using the Grocery List Manager"
end

