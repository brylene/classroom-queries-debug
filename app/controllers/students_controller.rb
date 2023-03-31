class StudentsController < ApplicationController
  def index
    @list_of_students = Student.all

    render({ :template => "students/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_students = Student.where({ :id => the_id })

    @the_student = matching_students.at(0)

    render({ :template => "students/show.html.erb" })
  end
end
