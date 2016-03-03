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
    @all_classes = Klass.all
  end
end
