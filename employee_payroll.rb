class Employee
	attr_reader :name, :email
	def initialize (name, email)
		@name = name
		@email = email
	end
end
class HourlyEmployee < Employee
	def initialize (name, email, hourly_pay, hours_worked)
		super(name, email)
		@hourly_pay = hourly_pay
		@hours_worked = hours_worked
	end
	def calculate_salary
		calculate_salary = @hourly_pay*@hours_worked
	end
end
class SalariedEmployee < Employee
	def initialize (name, email, yearly_pay)
		super(name, email)
		@name = name
		@email = email
		@yearly_pay = yearly_pay
	end
	def calculate_salary
		calculate_salary = @yearly_pay/52
	end
end
class MultiPaymentEmployee < Employee
	def initialize (name, email, yearly_salary, hourly_rate, hours_worked)
		super(name, email)
		@yearly_salary = yearly_salary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end
	def calculate_salary
		calculate_salary = @yearly_salary/52 + @hourly_rate*(@hours_worked-40)
	end
end

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

puts josh.calculate_salary
puts nizar.calculate_salary
puts ted.calculate_salary

class Payroll
    def initialize(employees)
        @employees = employees
    end
    def notify_employee(employee)
       puts "\nTo: #{employee.email}\n\nHello #{employee.name},\nYour this week's payment of #{employee.calculate_salary}€ has been transfered.\n\n\n"
    end
	def pay_employees
  		@employees.each do |employee|
  			puts "Name: #{employee.name} | Payment: #{employee.calculate_salary}€ | Employe taxrate: #{employee.calculate_salary * 0.18}€"
  			notify_employee(employee)
  		end
      # Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 
	end
end
Sergi = HourlyEmployee.new('Sergi', 'sergi@gmail.com', 15, 45)
Felipa = HourlyEmployee.new('Felipa', 'filipa@gmail.com', 15, 40)

employees = [josh, nizar, ted, Sergi, Felipa]
payroll = Payroll.new(employees)
payroll.pay_employees