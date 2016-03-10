class StudentsController < ApplicationController
  def index
    @all_students = Student.all
  end
  def edit
  @all_students = Student.find(params[:id])
  end
  def update
    @all_students = Student.find(params[:id])
    @all_students.update_attributes(student_params)
    redirect_to students_path
  end

  def destroy
    @all_students = Student.find(params[:id])
    @all_students.destroy!
      redirect_to students_path

  end

  def new
    @all_students = Student.new
  end
  def create
    @all_students = Student.new(student_params)
    if @all_students.save
      redirect_to students_path
    else
      render :edit
    end
  end



private
  def student_params
    params.require(:student).permit(:id,:name)
  end
end
