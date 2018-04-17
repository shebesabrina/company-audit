require './test/test_helper'
require './lib/timesheet'
require './modules/date_handler'
require 'pry'
class TimeSheetTest < Minitest::Test
  attr_reader :timesheet

  def setup
    employee_id = '5'
    project_id = '7'
    date = '2015-01-01'
    minutes = '120'
    @timesheet = Timesheet.new(employee_id, project_id, date, minutes)
  end

  def test_it_exists
    assert_instance_of Timesheet, timesheet
  end

  def test_it
    assert_equal Integer, timesheet.employee_id.class
    assert_instance_of Date, timesheet.date
    assert_instance_of Integer, timesheet.minutes.values[0]
  end
end
