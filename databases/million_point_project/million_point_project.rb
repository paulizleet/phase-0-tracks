require 'sqlite3'


def init_db


	db = SQLite3::Database.new("todo_list.db")
	db.results_as_hash = true

	create_table_cmd = <<-SQL
		CREATE TABLE IF NOT EXISTS tasks(
		id INTEGER PRIMARY KEY, 
		task VARCHAR(255),
		deadline VARCHAR(255)
		)
	SQL

	db.execute(create_table_cmd)

	return db

end

def print_tasks(db)

	puts "\n\n\n"

	task_hash = db.execute("SELECT * FROM tasks")

	task_hash.each {
		|db_line|

			puts "#{db_line['id']}. #{db_line['task']} - #{db_line['deadline']}"
	}

	puts "\n\n\n"
	

end

def insert_new_task(db, task, deadline)

	db.execute("INSERT INTO tasks (task, deadline) VALUES (?, ?)", [task, deadline])

end

def complete_task(db)

	print_tasks(db)

	puts "Which task did you complete?"

	db_result = db.execute("DELETE FROM tasks WHERE id=(?)",[gets.chomp])

	puts "Good job!"

end


def get_new_task(db)
	puts "What is your task called?"
	task = gets.chomp

	puts "What is the deadline?"
	deadline = gets.chomp

	insert_new_task(db, task, deadline)
end

def change_task(db)
	print_tasks(db)

	puts "Which task would you like to change?"
	id = gets.chomp.to_i

	puts "What would you like to change about this task?\n1. Task name\n2. Deadline"
	to_change = case gets.chomp
		when "1" then column = "task"
		when "2" then column = "deadline"
		else 
			puts "invalid selection"
			return
	end

	puts "What would you like to change it to?"
	value = gets.chomp

	db.execute("UPDATE tasks SET #{column}=\"#{value}\" WHERE id=#{id}")

end

def main


	db = init_db 

	print_tasks(db)

	finished = false
	while finished == false

		puts "1. Print tasks\n2. New task\n3. Complete task\n4. Change task\n5. Quit"

		choice = case gets.chomp
			when '1' then print_tasks(db)
			when '2' then get_new_task(db)
			when '3' then complete_task(db)
			when '4' then change_task(db)
			when '5' then finished = true
			else puts "invalid option"
		end

	end
	


end



main