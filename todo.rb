class List

  attr_reader :all_tasks

  def initialize
    @all_tasks = []
  end

  def add_task(new_task)
    @all_tasks.push(new_task)
  end

end

class Task
  attr_reader :description

  def initialize(description)
    @description = description

  end
end

if __FILE__ == $PROGRAM_NAME
  my_list = List.new
  puts 'You have created a new list'
  my_list.add_task(Task.new("Go shopping"))
  puts "You have created a new task"
end
