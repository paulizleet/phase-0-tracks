puts "How many new employees to process?"
however_many = gets.chomp.to_i


while however_many > 0
	puts "What is your name?"
	employee_name = gets.chomp

	puts "What year were you born? (19XX)"
	year = gets.chomp.to_i

	if year < 1900 || year > 2017
		year = 0
	end
	puts "Our company serves garlic bread.  Would you like some? (y/n)"
	garlic = gets.chomp

	if garlic == "y"
		garlic = true
	else 
		garlic = false
	end

	puts "Would you like to enroll in our company health insurance policy? (y/n)"
	ins = gets.chomp

	if ins == "y"
		ins = true
	else
		ins = false
	end

	is_vampire = nil

	if employee_name == "Drake Cula" || employee_name == "Tu Fang"
		is_vampire = "Definitely a vampire"

	elsif year == 0 && garlic == false && ins == false
		is_vampire = "Almost certainly a vampire."

	elsif year != 0 && (garlic == true || ins == true)
		is_vampire = 'Probably not a vampire'

	elsif year == 0 && ( garlic == false || ins == false)
		is_vampire = 'Probably a vampire'
	else 
		is_vampire = "Results inconclusive."
	end
	puts is_vampire

	however_many -= 1		
end

puts "Please list any and all allergies.  Type done when finished"

begin
	allergy = gets.chomp
end until allergy == "sunshine" || allergy == "done"

if allergy == 'sunshine'
	puts "Definitely a vampire"

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."