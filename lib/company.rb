require 'CSV'

class Company
  attr_reader :employees, :projects, :timesheets
  def initialize
    @employees = []
    @projects = []
    @timesheets = []
  end

  def load_bad_employees(filename)
    CSV.foreach(filename, headers: true, header_converters: :symbol) do |row|
      @file[row]
    end
  end
end
