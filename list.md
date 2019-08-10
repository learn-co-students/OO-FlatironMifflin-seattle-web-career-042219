**`Manager`**
  [x] `Manager#name`
    * returns a `String` that is the manager's name
  [*] `Manager#department`
    * returns a `String` that is the department that the manager oversees
  [*] `Manager#age`
    * returns a `Fixnum` that is the age of the manager
  [*] `Manager#employees`
    * returns an `Array` of all the employees that the manager oversees
  [*] `Manager.all`
    * returns an `Array` of all the managers
  [*] `Manager#hire_employee`
    * takes a `String` argument and a `Fixnum` argument of an employee's name and the employee's salary, respectively, and adds that employee to the list of employees that the manager oversees
  [*] `Manager.all_departments`
    * returns an `Array` of all the department names that every manager oversees
  [*] `Manager.average_age`
    * returns a `Float` that is the average age of all the managers

**`Employee`**
  [*] `Employee#name`
    * returns a `String` that is the employee's name
  [*] `Employee#salary`
    * returns a `Fixnum` that is the employee's salary
  [*] `Employee#manager_name`
    * returns a `String` that is the name of their manager
  [*] `Employee.all`
    * returns an `Array` of all the employees
  [*] `Employee.paid_over`
    * takes a `Fixnum` argument and returns an `Array` of all the employees whose salaries are over that amount
  [*] `Employee.find_by_department`
    * takes a `String` argument that is the name of a department and returns the first employee whose manager is working in that department
  [*] `Employee#tax_bracket`
    * returns an `Array` of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
