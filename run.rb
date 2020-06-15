require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

man1 = Manager.new("Cameron", "Finance", 40)
man2 = Manager.new("Turtle", "Shipping", 66)

emp1 = Employee.new("Frank", 20000, "Cameron")
emp2 = Employee.new("Brit", 15000, "Turtle")
#Test your code here

Manager.all
man1.hire_employee("Spurn", 20001)
Manager.all_departments
Manager.average_age

Employee.all
Employee.paid_over(20500)
puts Employee.find_by_department("Finance")
emp1.tax_bracket

binding.pry
puts "done"
