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

  def manager
    Manager.all.find{|boss| boss.name == manager_name}
  end

  def self.paid_over(salary)
    @@all.select{|employee| employee.salary > salary}
  end

  def self.find_by_department(department)
    @@all.find {|employee| employee.manager.department == department}
  end

  def tax_bracket
    @@all.select do|employee|
       self.salary+1000 > employee.salary &&  employee.salary > self.salary-1000
    end
  end
end
