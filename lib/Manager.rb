
class Manager

  @@all = []

  attr_accessor :name, :department, :age

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def hire_employee(name, salary)
    Employee.new(name, salary, self)
  end

  def employees
    Employee.all.select do |emp_obj|
      emp_obj.manager_name == self
    end
  end

  def self.all_departments
    @@all.collect do |mgr_obj|
      mgr_obj.department
    end
  end

  def self.average_age
    age_ary = []
    age_ary = @@all.collect do |mgr_obj|
        mgr_obj.age
    end
    age_ary.sum / age_ary.count
  end

end
