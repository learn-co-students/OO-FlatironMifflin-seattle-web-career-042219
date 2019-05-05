require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

#manager objects
laura = Manager.new("Laura", "QA", 40)
sarah = Manager.new("Sarah", "Operations", 35)
kevin = Manager.new("Kevin", "Development", 45)


#employee objects
lisa = laura.hire_employee("Lisa", 10000)
dave = laura.hire_employee("Dave", 11000)
katie = sarah.hire_employee("Katie", 11300)
erin = sarah.hire_employee("Erin", 9000)
tyler = kevin.hire_employee("Tyler", 8000)
sam = kevin.hire_employee("Sam", 8500)

#other method tests Manager
all_managers = Manager.all
lauras_employees = laura.employees
all_departments = Manager.all_departments
average_age = Manager.average_age


#other method tests Employee
all_employees = Employee.all
over_limit = Employee.paid_over(10000)
by_dept = Employee.find_by_department("QA")
by_bracket = tyler.tax_bracket

binding.pry
puts "done"
