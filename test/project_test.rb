require './test/test_helper'
require './lib/project'
require './modules/date_handler'
require 'pry'

class ProjectTest < Minitest::Test
  attr_reader :project
  def setup
    @project = Project.new('123', 'Widget Maker', '2015-01-01', '2018-01-01')
  end

  def test_instantiation
    assert_instance_of Project, project
  end

  def test_attributes
    project = Project.new('123', 'Widget Maker', '2015-01-01', '2018-01-01')

    assert_equal 123, project.project_id
    assert_equal Integer, project.project_id.class
    assert_equal 'Widget Maker', project.name
    assert_instance_of Date, project.start_date
    assert_instance_of Date, project.end_date
  end
end
