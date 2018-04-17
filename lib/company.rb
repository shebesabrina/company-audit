require 'CSV'

class Company
  attr_reader :employees, :projects, :timesheets
  def initialize
    @employees = []
    @projects = []
    @timesheets = []
  end

  def load_file(filename)
    CSV.foreach(filename, headers: false) do |data|
      @file = {}
      if data.count == 5
        @file[:success] = true
        @file[:error] = nil
        @employees << Employee.new(data[0], data[1], data[2], data[3], data[4])
      end
    end
    @file
  end
end
