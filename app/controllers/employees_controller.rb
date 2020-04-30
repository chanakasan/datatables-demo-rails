class EmployeesController < ApplicationController
  def index
    render json: { data: Employee.all }
  end
end
