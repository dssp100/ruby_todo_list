module Menu

  def menu
      " Welcome to the TodoList Program!
      This menu will help you use the Task List System
      1) Add
      2) Show
      Q) Quit "
    end

    def show_menu
      menu
    end

module Promptabe

    def promt(message = "What would you like to do?", symbol = ":> ")
      print message
      answer = gets.chomp
    end

end

class List
  attr_reader :all_tasks

  def initialize
    @all_tasks = []
  end

  def add_task(new_task)
    @all_tasks.push(new_task)
  end

  def show
    @all_tasks
  end

end #end of the List class

class Task
  attr_reader :description

  def initialize(description)
    @description = description
  end

end #end of the Task class

if __FILE__ == $PROGRAM_NAME
  my_list = List.new
  puts 'You have created a new list'
  my_list.add_task(Task.new('Make Breakfast'))
  my_list.add_task(Task.new('Wash Breakfast Dishes'))
  my_list.add_task('Send Birthday Gift to Mom')
  puts 'You have added a task to the Todo List'
  puts 'Your task list:'
  puts my_list.show
end
