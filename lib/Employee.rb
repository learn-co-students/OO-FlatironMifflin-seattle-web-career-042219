class Employee

    attr_accessor :name, :salary, :manager

    @@all=[]

    def initialize(name, salary, manager)
        @name=name
        @salary=salary
        @manager=manager
        @@all<<self
    end

    def self.all
        @@all
    end

    def manager_name
        self.manager.name
    end

    def self.paid_over(number)
        self.all.select do |employee|
            employee.salary > number
        end
    end

    def self.find_by_department(department)
        self.all.find do |employee|
            employee.manager.department == department
        end
    end

    def tax_bracket
        
        Employee.all.find_all do |employee|
            (employee.salary - self.salary ).between?(-1000, 1000)
        end
    end
end
