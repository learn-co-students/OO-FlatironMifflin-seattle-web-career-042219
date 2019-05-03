class Employee
	attr_accessor :name, :salary, :manager_name

	@@all = []

	def initialize(name, salary, manager_name)
		@name = name
		@salary = salary
		@manager_name = manager_name
		@@all << self
	end

	def self.paid_over(salary)
		self.all.select do |employee|
			employee.salary > salary
		end
	end

	def self.find_by_department(dept)
		dept_manager = Manager.all.find {|manager| manager.department == dept}

		self.all.find do |employee|
			employee.manager_name == dept_manager.name
		end
	end

	def tax_bracket
		self_sal = self.salary
		Employee.all.select do |employee|
			employee.salary.between?(self.salary-1000, self.salary+1000) && 
			employee.name != @name
		end
	end

	def self.all
		@@all
	end
end
