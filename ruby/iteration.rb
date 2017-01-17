

#Here, you can declare AND initialize an array in one line
#By giving #new() a block, it passes the output to the index of the array
#
arr = Array.new(10) {|index| index}


puts "Here are the original values"
arr.each {|value| puts "This is the #{value}th number in the array"}

new_arr = arr.map do |ar|
	#puts ar 
	ar.next
end

puts "\nThis did not change the values of the original array"
arr.each {|value| puts "This is the #{value}th number in the array"}

puts "\nBut it did create a new array with the new values."
new_arr.each {|value| puts "This is the #{value}th number in the array"}

puts "\nHere I have changed all of the values"

new_arr = arr.map! do |ar|
	#puts ar 
	ar.next
end
puts "\nAs you can see"
arr.each {|value| puts "This is the #{value}th number in the array"}

puts "\nAt this point, I think there are too many letters.\n  I will take away half of them"
arr.delete_if{|entry| entry % 2 == 0}
arr.each {|value| puts "This is the #{value}th number in the array"}



puts "\n\nNow onto our hash. \nHere is a list of video games"
games_slash_devs = {

	R6Seige: "Ubisoft",
	SplinterCell: "Ubisoft",
	Dota2: "Valve",
	CounterStrike: "Valve",
	Team_Fortress: "Valve",
	DiRT_Rally: "Codemasters",
	Saints_Row: "Volition",
	SpaceChem: "Zachtronics Industries"

}


games_slash_devs.each{|game, developer|
	puts "#{game} is developed by #{developer}"
	}

puts "\nThere are more than a couple games developed by Valve.\nHere are all of the ones in our hash"
valve_games = games_slash_devs.select {|key, value| value == "Valve"}
valve_games.each_key{|key| puts key}


