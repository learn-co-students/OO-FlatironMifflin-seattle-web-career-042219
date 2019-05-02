class Manager
attr_accessor :name, :age, :department
@@all = []

def initialize(name, age, department)
@name= name
@age= age
@department = department
@@all<< self
end

def self.average_age
ages = @@all.map{|manager|manager.age}
ages.sum.to_f/ages.length
end


def self.all_departments
departments = @@all.map{|manager|manager.department}
departments.uniq
end

def hire_employee (name, salary)
Employee.new(name, salary, self)
end

def self.all
@@all
end

def employees
Employee.all.select{|employee| employee.manager ==self}
end
end
