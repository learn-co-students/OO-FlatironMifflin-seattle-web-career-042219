class Employee

  attr_accessor :name, :salary, :manager

  @@all = []

  def initialize(name, salary, manager)
    @name = name
    @salary = salary
    @manager = manager
    @@all << self
  end

  def self.all
    @@all
  end

  def manager_name
    self.manager.name
  end

  def self.paid_over(salary)
    self.all.select do |employee|
      employee.salary > salary
    end
  end

  def self.find_by_department(department)
    #match = nil
    match = nil
    Manager.all.each do |manager|
      match = manager.employees.first if manager.department == department && !match
    end
    match
  end

  def tax_bracket
    @@all.select do |employee|
      self.salary + 1001 > employee.salary && self.salary - 1001 < employee.salary && self.name != employee.name
    end
  end

end
