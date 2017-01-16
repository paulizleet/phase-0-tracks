
client = {

	c_name: "",
	c_age: 0,
	c_married: false,
	c_kids: 0,
	c_theme: "",
	c_blue: "",

}


puts "What is your name?"
client[:c_name] = gets.chomp

puts "How old are you?"
client[:c_age] = gets.chomp.to_i

puts "Are you married? y/n"
married = gets.chomp

if married == "y"
	client[:c_married] = true
else
	client[:c_married] = false
end

puts "How many children do you have?"
client[:c_kids] = gets.chomp.to_i

puts "What decor theme would you like?"
client[:c_theme] = gets.chomp

puts "What is your favorite shade of blue?"
client[:c_blue] = gets.chomp


puts "\n\n"
choice = ""

while choice != "y"
	#For each key/value pair in hash client, print out the values of the key and value.
	client.each {|key, value| puts "#{key} : #{value}"}

	puts "\n Is this correct? y/n"
	choice = gets.chomp

	if choice == 'n'

		#For each key/value pair in this hash, execute the code within the brackets
		client.each{
			|key, value|

			puts "\nIf this is correct, press enter.\nOtherwise, enter a new value\n"
			puts "#{key} : #{value}"
			val = gets.chomp
			if val != ""
				

				elsif key == :c_age or key == :c_kids
					client[key] = val.to_i
				else
					client[key] = val
				end

			end

		}

	end
end



