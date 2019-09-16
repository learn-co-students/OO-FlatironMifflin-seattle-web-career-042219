class Manager

  @@all = []

  attr_accessor :name, :department, :age
  attr_reader :employees

  def initialize(name:, department:, age:)
    @name = name
    @department = department
    @age = age
    @employees = []
    @@all << self
  end

  def self.all
    @@all
  end

  def hire_employee(string, salary)
    @employees << Employee.new(name: string, salary: salary, manager: self)
  end

  def self.all_departments
    arr = []
    self.all.map do |manager|
      arr << manager.department
    end
    arr.uniq
  end

  def self.average_age
    arr = []
    self.all.map do |manager|
      arr << manager.age
    end
    (arr.sum / arr.size).to_f
  end
end
