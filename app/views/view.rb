class TaskView

	def self.list_tasks
		puts "-------------------------------TODO LIST---------------------------------"
		Task.all.each do |list|
		puts "#{list.id}. #{list.completed} #{list.text.to_s}"
		end
		puts "-------------------------------TODO LIST---------------------------------"
	end

	def self.menu
		puts "------------------------------OPTION LIST--------------------------------"
		puts "|                 INVALID INPUT. AVAILABLE OPTIONS :                    |"
		puts "-------------------------------------------------------------------------"
		puts "| - add + (input task description)                                      |"
		puts "| - list                                                                |"
		puts "| - delete + (input task #id)                                           |"
		puts "| - complete + (input task #id)                                         |"
		puts "-------------------------------------------------------------------------"
	end

	def self.item_deleted(task)
		puts "-------------------------------------------------------------------------"
		puts "#{task.text} deleted!"
		puts "-------------------------------------------------------------------------"
		puts ""
	end

	def self.task_completed(task)
		puts "-------------------------------------------------------------------------"
		puts "#{task.text} completed!"
		puts "-------------------------------------------------------------------------"
		puts ""
	end

	def self.item_added(task)
		puts "-------------------------------------------------------------------------"
		puts "#{task} added to database!"
		puts "-------------------------------------------------------------------------"
		puts ""
	end

end