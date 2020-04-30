class EmployeesController < ApplicationController
  def index
    render json: EmployeeDatatable.new(params)
  end
end
