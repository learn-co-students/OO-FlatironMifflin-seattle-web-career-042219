require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

  michael = Manager.new("Michael", "Sales", 45)
  daryl = Manager.new("Daryl", "Warehouse", 40)
  jim = Employee.new("Jim", 30000, "Michael")
  roy = Employee.new("Roy", 25000, "Daryl")
  dwight = Employee.new("Dwight", 30500, "Michael")

binding.pry
puts "done"
