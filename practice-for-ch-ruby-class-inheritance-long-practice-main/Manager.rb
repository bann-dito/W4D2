require_relative "./Employee.rb"

class Manager < Employee

    attr_reader :employees

    def initialize(name, title, salary, boss = nil)
        super
        @employees = []
    end

    def add_employee(employee)
        @employees << employee
    end

    def bonus(multiplier)
        self.find_employee * multiplier 
    end

    def find_employee
        
        queue = self.employees
        sum = 0
        until queue.empty?
            current_employee = queue.shift
            if current_employee.is_a?(Manager)
                queue += current_employee.employees
            end

            sum += current_employee.salary
        end
        sum
    end

end