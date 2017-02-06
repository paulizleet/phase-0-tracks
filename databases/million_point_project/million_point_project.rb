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


def get_new_task(db)
	puts "What is your task called?"
	task = gets.chomp

	puts "What is the deadline?"
	deadline = gets.chomp

	insert_new_task(db, task, deadline)
end

def main


	db = init_db 


	finished = false
	while finished == false

		puts "1. Print tasks\n2. New task\n3. Complete task\n4. Quit"

		choice = case gets.chomp
			when '1' then print_tasks(db)
			when '2' then get_new_task(db)
			when '3' then complete_task(db)
			when '4' then finished = true
			else puts "invalid option"
		end

	end
	


end



main