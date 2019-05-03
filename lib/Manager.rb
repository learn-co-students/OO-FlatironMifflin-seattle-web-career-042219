class Manager
	attr_accessor :name, :department, :age

	@@all = []

	def initialize(name, department, age)
		@name = name
		@department = department
		@age = age
		@@all << self
	end

	def employees
		Employee.all.select do |employee|
			employee.manager_name == self.name
		end
	end

	def hire_employee(name, salary)
		Employee.new(name, salary, self.name)
	end

	def self.all_departments
		self.all.map do |manager|
			manager.department
		end.uniq
	end

	def self.average_age
		ages_array = self.all.map do |manager|
			manager.age
		end
		ages_array.sum.to_f / ages_array.length.to_f
	end

	def self.all
		@@all
	end
end
