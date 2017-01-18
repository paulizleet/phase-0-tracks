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

	if grocery_list[item_name] == nil
		grocery_list[item_name] = qty
	else
		puts "Item already in list"
	end

	return grocery_list
end

# Method to remove an item from the list
# input: hash, item name
# steps: hash.delete(item)
# output: new hash



# Method to update the quantity of an item
# input: list, item name, new quantity
# steps: hash[item_name] = new quantity
# output: updated hash

# Method to print a list and make it look pretty
# input: hash
# steps: iterate over hash |key, value| puts "#{key} - #{value}"
# output: nil


#Driver code

puts create_list("carrots apples cereal pizza carrots apples cereal pizza")

