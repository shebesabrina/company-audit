class Employee
  attr_reader :employee_id, :name, :role, :start_date, :end_date

  def initialize(employee_id, name, role, start_date, end_date)
    @employee_id = employee_id.to_i
    @name = name
    @role = role
    @start_date = start_date_helper(start_date)
    @end_date = end_date
  end

  def start_date_helper(start_date)
    date = Date.parse start_date
    year = date.year
    day = date.mon
    month = date.mday
    "#{year}-#{day}-#{month}"
  end.to_i
end
