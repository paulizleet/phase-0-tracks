
puts "What is your first name?"
last = gets.chomp.downcase
puts "What is your last name?"
first = gets.chomp.downcase


sname = (first + " " + last).chars
vowels = 'aeioua' #One extra letter.  Without the last 'a' a 'u' would wrap onto nothing and crash
consonants = 'bcdfghjklmnpqrstvwxyzb' #same reason here

newname = ""

sname.each{

	|letter|
	puts letter
	if vowels.index(letter) != nil
		puts "Swapping vowel"
		newname += vowels[vowels.index(letter)+1]

	elsif consonants.index(letter) != nil
		newname += consonants[consonants.index(letter)+1]
		puts "swapping consonant"
	else 

		newname += letter
	end

}


puts newname