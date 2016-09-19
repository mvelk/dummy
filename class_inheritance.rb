class Employee
  attr_reader :salary

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    @boss.add_direct_report(self) if @boss.is_a?(Manager)
  end

  def bonus(multiplier)
    bonus = @salary * multiplier
  end



end

class Manager < Employee
  attr_reader :direct_reports
  def initialize(name, title, salary, boss)
    @direct_reports = []
    super
  end

  def sum_direct_report_salaries
    @direct_reports.inject(0) do |sum, sub|
      if sub.is_a?(Manager)
        sum + sub.salary + sub.sum_direct_report_salaries
      else
        sum + sub.salary
      end
    end
  end

  def bonus(multiplier)
    sum_direct_report_salaries * multiplier
    # @direct_reports.inject(0) { |sum, employee| employee.is_a?(Manager) ? employee sum + employee.salary }
    # something * multiplier
  end

  def add_direct_report(employee)
    @direct_reports << employee
  end


end

ned = Manager.new("Ned", "Founder", 1000000, nil)
darren = Manager.new("Darren", "Manager", 78000, ned)
shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)

p ned.bonus(5) # => 500_000y
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000
p ned.sum_direct_report_salaries
