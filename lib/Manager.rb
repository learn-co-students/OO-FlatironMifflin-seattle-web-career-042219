class Manager
  attr_accessor :name, :department, :age, :employees

  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @employees = []
    @@all << self
  end

  def self.all
    @@all
  end

  def hire_employee(name, salary)
    self.employees << Employee.new(name, salary, self)
  end

  def self.all_departments
    self.all.map do |manager|
      manager.department
    end
  end

  def self.average_age
    total_age = 0.0;
    self.all.each do |manager|
      total_age += manager.age
    end
    total_age / self.all.length
  end

end
