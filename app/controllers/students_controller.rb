class StudentsController < ApplicationController
    def new 
    @student = Student.new
  end
  
  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end
  
  def show 
  end 
  
  private 
    def student_params
      params.require(:sstudent).permit(:title, :room_number)
    end
  
end