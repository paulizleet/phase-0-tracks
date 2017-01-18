# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Grocery list made of hash keys/values
  # "item" => qty *****
  # 
  # add list item to list
  # set default quantity at least one
  # print the list to the console [can you use one of your other methods here?]
# output: hashes
def create_list(items)

	grocery_list = {}

	list_items = items.split(" ")

	#best practice...
	list_items.each do |item_name|
		grocery_list = add_item(grocery_list, item_name)
	end

	return grocery_list
end

# Method to add an item to a list
# input: hash, item name, and optional quantity
# steps:Check if it's already there 
# 		add new key value pair
# output: hash
def add_item(grocery_list, item_name, qty = 1)
	grocery_list[item_name] = qty
	return grocery_list
end



# Method to remove an item from the list
# input: hash, item name
# steps: hash.delete(item)
# output: new hash

def remove_item(grocery_list, item_name)
	grocery_list.delete(item_name)
	return grocery_list
end 


# Method to update the quantity of an item
# input: list, item name, new quantity
# steps: hash[item_name] = new quantity
# output: updated hash

def update_quantity(grocery_list, item_name, qty = 1)
	grocery_list = add_item(grocery_list, item_name, qty)
	return grocery_list
end


# Method to print a list and make it look pretty
# input: hash
# steps: iterate over hash |key, value| puts "#{key} - #{value}"
# output: nil

def print_list(grocery_list)
	grocery_list.each do |grocery, qty|
		puts "#{grocery}, qty: #{qty}"
	end
end

#Driver code

grocery_list = create_list("carrots apples cereal pizza")
grocery_list = add_item(grocery_list, "brocolli", 2)
grocery_list = add_item(grocery_list, "celery", 3)
grocery_list = add_item(grocery_list, "oranges", 4)
grocery_list = remove_item(grocery_list, "carrots")
grocery_list = remove_item(grocery_list, "oranges")
print_list(grocery_list)


/
What did you learn about pseudocode from working on this challenge?

	That using structured pseudocode is a useful tool for quickly
	understanding what a method is supposed to accomplish

What are the tradeoffs of using arrays and hashes for this challenge?
	Hashes make use of keys, and that makes finding certain entries simple because you can just ask for a key.
	With arrays you need to iterate and check every one until you find it.

What does a method return?
	Whatever we tell it to!  
	It returns the value that we want whoever called the method to carry on with.

What kind of things can you pass into methods as arguments?
	You can pass anything you like.
	You can even make a method call itself while already calling itself.

How can you pass information between methods?
	1. Global Variables.  It's a bad idea but you can do it.
	2. Calling more methods!


What concepts were solidified in this challenge, and what concepts are still confusing?
	I still don't really understand the point of hashes.  
	I'm used to just piling arrays onto one another because it made sense to me.
/