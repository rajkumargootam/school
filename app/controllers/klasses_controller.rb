# == Schema Information
#
# Table name: klasses
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class KlassesController < ApplicationController
  def index
    @al1_classes = Klass.all
  end
  def edit
    @all_class = Klass.find(params[:id])
  end
  def update
    @all_class = Klass.find(params[:id])
    @all_class.update_attributes(klass_params)
    redirect_to klasses_path
  end

  def destroy
    @all_class = Klass.find(params[:id])
    @all_class.destroy!
      redirect_to klasses_path

  end

  def new
    @all_class = Klass.new
  end
  def create
    @all_class = Klass.new(klass_params)
    if @all_class.save
      redirect_to klasses_path
    else
      render :edit
    end
  end



private
  def klass_params
    params.require(:klass).permit(:id,:title)
  end
end
