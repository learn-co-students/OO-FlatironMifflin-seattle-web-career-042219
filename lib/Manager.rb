class Manager
  attr_accessor :name, :department, :age

  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
    Employee.all.select do |employee|
      employee.manager_name == self.name
    end
  end

  def hire_employee(name, salary)
    Employee.new(name, salary, self.name)
  end

  def self.all_departments
    Manager.all.map do |manager|
      manager.department
    end.uniq
  end

  def self.average_age
    total_age = 0.0
    Manager.all.each do |manager|
      total_age += manager.age
    end
    total_age.to_f / Manager.all.count
  end

  


end
