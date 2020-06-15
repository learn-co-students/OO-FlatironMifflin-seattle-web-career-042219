require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
alex = Manager.new('Alex', 'finance', 27)
joe = Manager.new('Joe', 'Magic', 31)

jim = alex.hire_employee('jim', 20000)
alex.hire_employee('paul', 20500)
alex.hire_employee('val', 25000)
joe.hire_employee('justin', 26000)





binding.pry
puts "done"
