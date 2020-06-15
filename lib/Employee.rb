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

    def self.paid_over(num)
        @@all.select{|element|
            element.salary > num
        }
    end

    def self.find_by_department(department)
        Manager.all.map{|manager|
           if manager.department == department
                return manager.employees.first
           end

        }
    end

    def tax_bracket
        @@all.select{|employee|
             self.salary + 1001 > employee.salary && self.salary - 1001 < employee.salary
        }
    end
end
