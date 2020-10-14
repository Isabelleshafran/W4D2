require_relative 'employee'

class Manager < Employee
    def initialize(name, title, salary, boss = nil)
        super
        @my_employee = []
    end

    def add_employee(employee)
        @my_employee << employee
    end

    def total_salary
        my_employee_salary = []
        @my_employee.each do |emp|
            my_employee_salary << emp.salary
        end
        my_employee_salary.sum
    end

    def bonus(num)
        self.total_salary * num
    end

end

david = Employee.new("David","TA", 10000, "Darren")
shawna = Employee.new("Shawna","TA", 12000, "Darren")
darren = Manager.new("Darren","TA Manager", 78000, "Ned")

darren.add_employee(shawna)
darren.add_employee(david)
p darren
p darren.bonus(4)

