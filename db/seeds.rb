require 'faker'
require_relative '../app/models/task'

module TasksImporter
  def self.import

  	10.times do
  		Task.create(text: Faker::Lorem.sentence(word_count = 4), :completed => "[ ]")
  	end
  end
end