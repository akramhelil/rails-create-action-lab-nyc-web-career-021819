class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    # redirect_to students_path
  end

  def new
  end

  def create
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
  redirect_to student_path(@student)
  end

end
