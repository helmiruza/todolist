require_relative '../models/task'
require_relative '../views/view'

class Controller
	
	def self.add(cmd)
		task = cmd[1..cmd.length].join(" ")
		Task.create(text: task, :completed => "[ ]")
		TaskView.item_added(task)
	end

	def self.complete_task(cmd)
		task_id = (cmd[1].to_i)
		task = Task.find_by(id: task_id)
		task.update(completed:'[X]')
		TaskView.task_completed(task)
	end

	def self.delete_task(cmd)
		task_id = (cmd[1].to_i)
		task = Task.find_by(id: task_id)
		task.destroy
		TaskView.item_deleted(task)
	end

	def self.run(cmd)
		input  = cmd[0]
		case input
		when "list" then TaskView.list_tasks
		when "add" then Controller.add(cmd)
		when "complete" then complete_task(cmd)
		when "delete" then delete_task(cmd)
		else
			TaskView.menu
		end
	end
end