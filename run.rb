require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

caleb = Manager.new('Caleb', 'Flatiron Students', 19)
bob = Manager.new('bob', 'Flatiron Students', 25)
dave = Manager.new('dave', 'Flatiron Students', 21)
frank = Manager.new('frank', 'Flatiron Students', 35)
# binding.pry
# puts "done"
puts caleb.name
puts caleb.age
puts caleb.department
caleb.hire_employee('vadim', 10000)
caleb.hire_employee('sean', 10900)
caleb.hire_employee('danny', 22000)

binding.pry
0
