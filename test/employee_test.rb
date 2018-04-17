require './test/test_helper'
require './lib/employee'
require './modules/date_handler'

class EmployeeTest < Minitest::Test
  attr_reader :employee
  def setup
  employee_id = '5'
  name = 'Sally Jackson'
  role = 'Engineer'
  start_date = '2015-01-01'
  end_date = '2018-01-01'
  @employee = Employee.new(employee_id, name, role, start_date, end_date)
  end

  def test_instantiation
    assert_instance_of Employee, employee
  end

  def test_attributes
    assert_equal 5, employee.employee_id
    assert_equal Integer, employee.employee_id.class
    assert_equal 'Sally Jackson', employee.name
    assert_equal 'Engineer', employee.role
    assert_instance_of Date, employee.start_date
    assert_instance_of Date, employee.end_date
  end
end
