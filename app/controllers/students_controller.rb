class StudentsController < ApplicationController
    def new 
    @student = Student.new
  end
  
  def create
    @student = SchoolClass.new(school_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end
  
  def show 
  end
  
  private 
    def school_params
      params.require(:school_class).permit(:title, :room_number)
    end
  
end