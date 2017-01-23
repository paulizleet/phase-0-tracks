
class TodoList

	def initialize(tasks)
		@tasks = Array.new
		@tasks += tasks
	end

	def get_items
		@tasks
	end

	def add_item(task)
		@tasks << task
	end

	def delete_item(task)
		@tasks.delete_if{|val| val == task}
	end

	def get_item(item_index)
		@tasks[item_index]
	end


end
