class SchoolClassesController < ApplicationController
  
  def new 
    @school_class = SchoolClass.new
  end
  
  def create
    @school_class = SchoolClass.new(school_params)
  end
  
  private 
    def school_params
      params.require(:school_class).permit(:title, :room_number)
    end
end