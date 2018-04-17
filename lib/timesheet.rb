class Timesheet
  attr_reader :employee_id, :project_id, :date, :minutes

  def initialize(employee_id, project_id, date, minutes)
    @employee_id = employee_id.to_i
    @project_id = project_id
    @date = DateHandler.string_to_date(date)
    @minutes = DateHandler.minutes_conversion(minutes.to_i)
  end
end
