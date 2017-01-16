
def get_new_desk
	desk = {
		occupant_name: "n/a",
		occupant_grade: 0,
		occupant_books: Array.new(10, "n/a"),
		occupant_supplies: Array.new(4, "n/a")	
	}


	desk[:occupant_books][0] = "English"
	desk[:occupant_books][1] = "Math"
	desk[:occupant_books][2] = "Science"
	desk[:occupant_books][3] = "Social Studies"


	desk[:occupant_supplies][0] = "5 Pencils"
	desk[:occupant_supplies][1] = "Eraser"
	desk[:occupant_supplies][2] = "Box of Crayons"
	desk[:occupant_supplies][3] = Array.new(5, "misc")



	puts desk

	return desk
end


def main
	school = Array.new(30, Array.new(21))

	#Each index in the array is a classroom

	a = 0
	while a < school.length
		classroom = school.at(a)

		b=0
		while b < classroom.length
			classroom[b] = get_new_desk
			b+=1
		end
	a+=1
	end

	puts school

end

main