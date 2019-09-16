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

  def self.paid_over(baseline)
    Employee.all.select do |employee|
      employee.salary > baseline
    end
  end

  def self.find_by_department(department)
    Employee.all.map do |employee|
      manager_name = employee.manager_name
      Manager.all.map do |manager|
        if manager.name == manager_name && manager.department == department
          employee
        end
      end
    end.flatten.compact.first
  end

  def tax_bracket
    Employee.all.select do |employee|
      (employee.salary-self.salary).abs < 1000 && employee != self
    end
  end

end
