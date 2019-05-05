
class Employee

  @@all = []

  attr_accessor :name, :salary, :manager_name

  def initialize(name, salary, manager_name)
    @name = name
    @salary = salary
    @manager_name = manager_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over(sal_limit)
    over_ary = []
    @@all.each do |emp_obj|
      if emp_obj.salary > sal_limit
        over_ary << emp_obj.name
      end
    end
    over_ary
  end

  def self.find_by_department(department)
    mgr = Manager.all.find do |mgr_obj|
      mgr_obj.department == department
    end
    @@all.find do |emp_obj|
      if emp_obj.manager_name == mgr
        emp_obj
      end
    end
  end

  def tax_bracket
    callers_salary = self.salary
    @@all.select do |emp_obj|
       emp_obj.salary <= callers_salary + 1000 &&
       emp_obj.salary >= callers_salary - 1000 &&
       emp_obj != self
    end
  end

end
