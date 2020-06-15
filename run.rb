require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
manager1 = Manager.new('Danny', 'Development', 29)
manager2 = Manager.new('John', 'Business', 32)
manager3 = Manager.new('Bill', 'Human Resource', 35)

manager1.hire_employee('Amy',100000)
manager1.hire_employee('Lala',110000)
manager1.hire_employee('Sandy',120000)
manager2.hire_employee('Mike',130000)
manager2.hire_employee('David',100000)
manager2.hire_employee('Kate',100000)
manager3.hire_employee('Jeff',140000)
manager3.hire_employee('Cooper',150000)
manager3.hire_employee('Bradley',150000)





binding.pry
puts "done"
