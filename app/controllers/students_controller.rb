class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save

    #redirect 
    redirect_to student_path(@student)
  end

  def show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
