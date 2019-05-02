class Manager
  attr_accessor :name, :department, :employees, :age

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

  def hire_employee (name, salary)
    newbie = Employee.new(name, salary, self.name)
    @employees << newbie
    newbie
  end

  def self.all_departments
    @@all.map {|boss| boss.department}
  end

  def self.average_age
    ages = @@all.map{|boss| boss.age}
    ages.sum / ages.length
  end

end
