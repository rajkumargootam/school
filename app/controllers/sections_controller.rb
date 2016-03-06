class SectionsController < ApplicationController
  def index
    @all_sections = Section.all
  end
  def edit
    @all_section = Section.find(params[:id])
  end
  def update
    @all_sections = Section.find(params[:id])
    @all_sections.update_attributes(section_params)
    redirect_to sections_path
  end

  def destroy
    @all_sections = Section.find(params[:id])
    @all_sections.destroy!
      redirect_to sections_path

  end

  def new
    @all_sections = Section.new
  end
  def create
    @all_sections = Section.new(section_params)
    if @all_sections.save
      redirect_to sections_path
    else
      render :edit
    end
  end



private
  def section_params
    params.require(:section).permit(:id,:name)
  end
end
