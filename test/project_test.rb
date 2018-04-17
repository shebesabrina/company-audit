require 'minitest/autorun'
require 'minitest/pride'
require './lib/project'
require './lib/employee'
require './modules/date_handler'
require 'pry'
class ProjectTest < Minitest::Test
  attr_reader :project

  def setup
    project_id = '123'
    name = 'Widget Maker'
    start_date = '2015-01-01'
    end_date = '2018-01-01'
    @project = Project.new(project_id, name, start_date, end_date)
  end

  def test_it_exists
    assert_instance_of project, Project
  end
end
