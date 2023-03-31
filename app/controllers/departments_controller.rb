class DepartmentsController < ApplicationController
  def index
    @list_of_departments = Department.all

    render({ :template => "departments/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_departments = Department.where({ :id => the_id }).at(0)

    @the_department = matching_departments

    render({ :template => "departments/show.html.erb" })
  end
end
