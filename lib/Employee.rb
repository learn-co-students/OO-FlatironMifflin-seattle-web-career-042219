class Employee

  @@all = []

  attr_accessor :name
  attr_reader :salary, :manager

  def initialize(name:, salary:, manager:)
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

  def self.paid_over(num)
    arr = []
    self.all.map do |employee|
      if employee.salary > num
        arr << employee.name
      end
    end
    arr
  end

  def self.find_by_department(string)
    self.all.find do |employee|
      if employee.manager.department == string
        employee
      end
    end
  end

  def tax_bracket
    self.class.all.select do |employee|
      if employee.salary >= self.salary - 1000 && employee.salary <= self.salary + 1000
        employee.name
      end
    end
  end

end
