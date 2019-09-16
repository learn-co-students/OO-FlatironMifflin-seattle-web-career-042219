class Employee

  attr_accessor :name, :salary, :manager_name

  @@all = []

  def initialize(name, salary, manager_name)
    @name = name
    @salary = salary
    @manager_name = manager_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over(salary)
    self.all.select do |employee|
      employee.salary > salary
    end
  end

  def self.find_by_department(department)
    manager = Manager.all.find do |manager|
      manager.department == department
    end
    manager.employees[0]
  end

  def tax_bracket
    min_salary = self.salary - 1000
    max_salary = self.salary + 1000
    Employee.all.select do |employee|
      employee.salary >= min_salary && employee.salary <= max_salary
    end
  end
  
end
