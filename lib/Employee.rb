class Employee
attr_accessor :name, :salary, :manager
@@all = []

def initialize(name, salary, manager)
@name= name
@salary= salary
@manager = manager
@@all<< self
end

def self.all
@@all
end

def self.paid_over(num)
@@all.select{|employee|employee.salary>num}
end

def self.find_by_department(department)
Manager.all.map{|manager|manager.employees if manager.department==department}.compact.flatten.first
end

def tax_bracket
max = self.salary + 1000
min = self.salary - 1000
 a = @@all.map{|employee|employee.name if employee.salary > min && employee.salary < max && employee.name != self.name}.compact
end
end
