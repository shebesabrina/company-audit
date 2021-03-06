require './test/test_helper'
require './lib/company'
require './lib/employee'
require './modules/date_handler'
require 'pry'

class CompanyTest < Minitest::Test
  attr_reader :company
  def setup
    @company = Company.new
  end

  def test_it_exists
    assert_instance_of Company, company
  end

  def test_it_has_empty_arrays
    assert_equal [], company.employees
    assert_equal [], company.projects
    assert_equal [], company.timesheets
  end

  def test_it_can_add_data_to_array
    filename = './data/employees.csv'
    assert_equal ({:success=>true, :error=>nil}), company.load_file(filename)
  end

  def test_it_can_determine_false_data
    filename = './data/bad_employees.csv'
    assert_equal ({:success=>false, :error=>'bad data'}), company.load_file(filename)
  end
end
