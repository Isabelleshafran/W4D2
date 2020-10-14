
class Employee
    attr_reader :name, :title
    attr_accessor :boss, :salary
    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def boss=(other_employee)
        self.boss = other_employee
        boss
    end

    def bonus(num)
        self.salary * num
        # return salary * num
    end

end
ned = Employee.new('ned', 'Founder', 1000000)
p ned
p ned.bonus(5) # => 500_000
# p ned


# p darren.bonus(4) # => 88_000
# p david.bonus(3) # => 30_000