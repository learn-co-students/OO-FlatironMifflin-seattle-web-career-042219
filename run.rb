require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("Adam", "Accounting", 11)
m2 = Manager.new("Babs", "Bookkeeping", 22)
m3 = Manager.new("Carl", "Computing", 33)

e1 = Employee.new("Xavier", 10000, m1)
e2 = Employee.new("Yanick", 20000, m2)
e2 = Employee.new("Yves", 20001, m2)
e3 = Employee.new("Zack", 30000, m3)


Pry.start
puts "done"
