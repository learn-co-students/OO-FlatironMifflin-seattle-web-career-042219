require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


alex = Manager.new("Alex", "sales", 28)
ella = Employee.new("Ella", 200000, "Alex")
rachel = Employee.new("Rachel", 5, "Alex")
victor = Manager.new("Victor", "marketing", 40)
colin = Employee.new("Colin", 500, "Alex")


binding.pry
puts "done"
