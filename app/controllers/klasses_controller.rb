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
    @all_class.update_attributes(:title, params[:title])
  end
end
